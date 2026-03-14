#!/bin/bash

# Array of image URLs from the API
images=(
  "30x40-vuong-vien-bo-jpg-3bbda7d5be584aa388f6ad3dd84e805f_0_0.jpg"
  "20x30-vuong-jpg-10c3a69f48754427a64b6302d7ddbc6f_400_400.jpg"
  "20x25-vuong-vien-bo-jpg-b4ff8158d81e42ac8797e3c50b356f89_400_400.jpg"
  "15x20-vuong-jpg-9fc33ab6b8974f9888693636e5caea29_400_400.jpg"
  "13x18-vuong-vien-bo-jpg-7f6f048e6bae40eda171ad1b35c6df55_400_400.jpg"
  "11x15-vuong-jpg-f204f2808acd416f93f6b0564488a539_400_400.jpg"
  "13x18-oval-vien-bo-jpg-e4e64f641bfd4cad89c9c2e56077fa84_400_400.jpg"
  "11x15-oval-vien-bo-copy-jpg-b2038b395d7644fcaca205575bbc920e_400_400.jpg"
  "9x12-oval-jpg-f3a098dbe75544bca8480c9f87412a93_400_400.jpg"
  "untitled-1-jpg-7bca0b83e73f44e7bba417df7460a987_0_0.jpg"
)

BASE_URL="http://api.gomsumilan.com/Content/Media/Uploads/Images/"

for image in "${images[@]}"; do
  echo "Downloading $image..."
  wget -q "$BASE_URL$image" -O "$image"
  if [ $? -eq 0 ]; then
    echo "✓ Downloaded: $image"
  else
    echo "✗ Failed: $image"
  fi
done

echo "Done!"
ls -lh *.jpg
