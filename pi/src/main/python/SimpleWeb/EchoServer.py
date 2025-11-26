import socketserver
from datetime import datetime
class EchoRequestHandler(socketserver.StreamRequestHandler):
    """
    The request handler class for our server.

    It is instantiated once per connection to the server, and handles
    all communication at that point.
    """
    def handle(self):
        # self.rfile is a file-like object for reading the input stream
        # self.wfile is a file-like object for writing the output stream
        print(f"Connection established with client at {self.client_address[0]}")
        text = datetime.now().strftime("%Y-%m-%d %H:%M:%S %Z")

        self.wfile.write(text.encode('utf-8'))
        while True:
            # Read data from the client
            data = self.rfile.readline()
            if not data or data == b'\r\n':
                break
            print(f"Received from client: {data.decode().strip()}")
            # Process the data (capitalize it) and send a response
            self.wfile.write(data.upper())
        print(f"Connection closed with client at {self.client_address[0]}")

if __name__ == "__main__":
    HOST, PORT = "localhost", 9998
    # Create the server, binding to localhost on port 9999
    # Use a 'with' statement to ensure the server socket is closed properly
    with socketserver.TCPServer((HOST, PORT), EchoRequestHandler) as server:
        print(f"Server listening on {HOST}:{PORT}...")
        # Activate the server; this will keep running until you
        # interrupt the program with Ctrl-C
        server.serve_forever()