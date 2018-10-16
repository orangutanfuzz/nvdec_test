# nvdec_test

## Description
This project was a small mock-up I built with libtransistor to see if the Clang symbols included in the official NintendoSDK would link against Switch homebrew.

The code fails to run due to some missing initialization I presume. I do not think it is wise to use nnSdk or any official symbols with libtransistor.

We can benefit from working on reverse engineering official symbols to add functionality to libnx or libtransistor.

## Usage
### Prerequisites 
You need the libtransistor toolchain and a copy of the official NintendoSDK.

### Dependencies
You must first edit `dep.sh` to point to your NintendoSDK folder. Then you can simply run
```bash
./dep.sh
```

## Contributing
Feel free to make PRs. This repo is just a toy so Issues are not going to be very useful but I will try to help anyone who tries to get this working.

### Contact
Twitter: @orangutanfuzz

Reddit: @orangutanfuzz

Email: orangutanfuzz@gmail.com

#### P.S.
I do not condone illegal behavior or activities. Please notify me if I am breaking any laws or NDA so I can rectify the situation.
