# eschalot-docker

eschalot is used to generate onion addresses.

For simple use eschalot runs in a container.

# Usage

If you want an address starting with "test":

> docker run -i z0ne0ne/eschalot-docker -vp test >> test.txt

This above command writes the first found address to the file test.txt .
If you want more addresses in test.txt:

> docker run -i z0ne0ne/eschalot-docker -vcp test >> test.txt

Have fun!

