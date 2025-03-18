import axios from "axios";
import fs from "fs";
import path from "path";
import { pipeline } from "stream/promises";
import { kaggle } from "./kaggle.js";
import { fileURLToPath } from "url";
import AdmZip from "adm-zip"; // Import adm-zip for unzipping

const fetchKaggleDataset = async () => {
  try {
    const url =
      "https://www.kaggle.com/api/v1/datasets/download/asaniczka/tmdb-movies-dataset-2023-930k-movies";

    const response = await axios({
      method: "get",
      url: url,
      responseType: "stream",
      headers: {
        Authorization: `Bearer ${kaggle.key}`, // Make sure to use a valid Kaggle API key
      },
    });

    if (response.status !== 200) {
      throw new Error(`Failed to fetch dataset: ${response.statusText}`);
    }

    return response.data;
  } catch (err) {
    console.error("Error fetching dataset:", err);
    throw err;
  }
};

const downloadZip = async () => {
  const __dirname = path.dirname(fileURLToPath(import.meta.url));
  const outputFilePath = path.join(__dirname, "tmdb-movies-dataset-2023-930k-movies.zip");
  let writeStream;

  try {
    const dataStream = await fetchKaggleDataset();

    writeStream = fs.createWriteStream(outputFilePath);

    await pipeline(dataStream, writeStream);

    console.log("Download completed!");
    return outputFilePath; // Return the path to the downloaded ZIP file
  } catch (err) {
    console.error("Error during download:", err);

    if (writeStream && fs.existsSync(outputFilePath)) {
      fs.unlinkSync(outputFilePath);
      console.log("Partially downloaded file deleted.");
    }
    throw err; // Re-throw the error to handle it in the main function
  } finally {
    if (writeStream) {
      writeStream.end();
    }
  }
};

const unzipFile = async (zipFilePath) => {
  const __dirname = path.dirname(fileURLToPath(import.meta.url));
  const outputDir = path.join(__dirname, "extracted");

  try {
    // Ensure the output directory exists
    if (!fs.existsSync(outputDir)) {
      fs.mkdirSync(outputDir, { recursive: true });
    }

    // Load the ZIP file
    const zip = new AdmZip(zipFilePath);

    // Extract all files to the output directory
    zip.extractAllTo(outputDir, true);

    console.log(`Extraction complete! Files are saved in: ${outputDir}`);
  } catch (err) {
    console.error("Error during extraction:", err);
    throw err;
  }
};

const main = async () => {
  try {
    const zipFilePath = await downloadZip();

    await unzipFile(zipFilePath);
  } catch (err) {
    console.error("Error in main function:", err);
  }
};

await main();
