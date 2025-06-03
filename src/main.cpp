#include "../include/stb_image.h"
#include "../include/stb_image_resize.h"
#include <string>
#include <iostream>
#include <vector>
#include <math.h>

const int MODE = STBI_rgb;
const int WIDTH = 700;
const std::string characters = "       ``.-':_,^=;><+!rc*/z?sLTv)J7(|Fi{C}fI31tlu[Z5Y]2ESwqkP6h9d4VpOGbUAKXHm8RD#$Bg0MNWQ%&@";
/*std::string characters = " .:-=+*#%@";*/
// std::string characters = "    .'`^\",:;Il!i><~+_-?][}{1)(|\\/tfjrxnuvczXYUJCLQ0OZmwqpdbkhao*#MW&8%B@$";

uint8_t get_intensity(uint8_t *image, int i, int channels) {
    if (channels == STBI_rgb) {
        uint8_t *pixel_offset = image + i * channels;
        uint8_t r = pixel_offset[0];
        uint8_t g = pixel_offset[1];
        uint8_t b = pixel_offset[2];

        return (uint8_t)round(0.299 * r + 0.587 * g + 0.114 * b);
    }
    else if (channels == STBI_grey) {
        uint8_t *pixel_offset = image + i * channels;
        uint8_t intensity = pixel_offset[0];

        return intensity;
    }
    return 0;
}

std::vector<std::string> get_output (uint8_t *image, int width, int height, int channels) {
    std::vector<std::string> output(height, std::string(width, '.'));
    for (int i = 0; i < height; i++) {
        for (int j = 0; j < width; j++) {
            int intensity = get_intensity(image, i * width + j, channels);
            int char_index = (float) intensity / 255 * (characters.size() - 1);
            output[i][j] = (char)characters[char_index];
        }
    }
    return output;
}

int main(int argc, char **argv) {
    /*freopen("output.txt", "w", stdout);*/
    if (argc != 2) {
        std::cout << "Usage: ./ASCII_Image <file_name>";
        return 1;
    }
    std::string file_path = std::string(argv[1]);

    int width, height; 
    uint8_t *image = stbi_load(file_path.c_str(), &width, &height, NULL, MODE);
    if (image == NULL) {
        std::cout << "No image found!";
        return 1;
    }
    /*stbir_resize_uint8(image, width, height, 0, image_resized, WIDTH, HEIGHT, 0, MODE);*/
    int HEIGHT = (height / (float) width) * WIDTH / 2; 
    uint8_t *image_resized = (uint8_t *)malloc(WIDTH * HEIGHT * MODE);
    stbir_resize_uint8(image, width, height, 0, image_resized, WIDTH, HEIGHT, 0, MODE);

    std::vector<std::string> output = get_output(image_resized, WIDTH, HEIGHT, MODE);
    /*std::vector<std::string> output = get_output(image, width, height, MODE);*/
    std::cout << "\e[0;93m";
    for (int i = 0; i < HEIGHT; i++) {
        for (int j = 0; j < WIDTH; j++) {
            std::cout << output[i][j];
        }
        std::cout << '\n';
    }
    return 0;
}
