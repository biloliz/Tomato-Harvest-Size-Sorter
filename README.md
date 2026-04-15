# 🍅 Tomato Detection and Size Classification Using Image Processing (MATLAB)

## 🌱 Project Overview
This MATLAB-based Tomato Detection and Size Classification system uses image processing techniques to automatically identify tomatoes in crop images and classify them based on size. The system applies HSV color segmentation, morphological processing, and region analysis to detect tomatoes and estimate their maturity level based on object area.

This project can be used in **smart agriculture, automated harvesting systems, and crop monitoring applications**.

---

## 🔍 Key Features

### 🍅 Tomato Detection via Color Segmentation
Detects tomatoes using HSV color space by isolating red color ranges.

### 🧼 Image Cleaning & Noise Removal
Applies morphological operations such as:
- Hole filling
- Small object removal
- Image closing for smoother segmentation

### 📦 Object Labeling & Region Analysis
Uses connected component labeling to identify individual tomatoes and extract features like:
- Area
- Centroid
- Bounding box

### 📊 Size-Based Classification
Classifies tomatoes into three categories:
- 🔵 Small
- 🟢 Medium
- 🔴 Large

### 📦 Visual Annotation
Draws bounding boxes and labels directly on detected tomatoes for easy interpretation.

---

## 🧪 Methodology

1. Load and resize tomato crop image  
2. Convert RGB image to HSV color space  
3. Apply thresholding to detect red regions (tomatoes)  
4. Clean binary mask using morphological operations  
5. Label connected tomato regions  
6. Extract region properties (area, centroid, bounding box)  
7. Classify tomatoes based on area thresholds  
8. Visualize results with annotations  

---

## 📊 Output
The system provides:
- Binary mask of detected tomatoes  
- Labeled tomato regions  
- Bounding boxes around each tomato  
- Size classification (Small, Medium, Large)  

---

## ⚙️ Requirements
- MATLAB (R2018 or later recommended)
- Image Processing Toolbox
- Input image: `tomato_crop.jpg`

---

## 🔮 Future Enhancements
- 🤖 Machine Learning-based ripeness classification  
- 🚁 Drone-based field-wide tomato detection  
- 📱 Mobile app integration for real-time crop monitoring  
- ⚖️ Weight estimation from fruit size  
- 🌾 Yield prediction system based on detected count and size  

---

## 🚜 Applications
- Smart farming systems  
- Automated crop grading  
- Harvest planning and optimization  
- Agricultural robotics  
- Precision agriculture analytics  

---

## 📌 Note
Performance depends on image quality, lighting conditions, and correct HSV threshold tuning.
