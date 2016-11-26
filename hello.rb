require 'sinatra'

get '/' do
  "<html>
    <body>
      <div style=\"
          position: absolute;
          width: 300px;
          height: 200px;
          z-index: 15;
          top: 50%;
          left: 50%;
          margin: -100px 0 0 -150px;
          background: lightblue;
          border: 2px solid lightblue;
          border-radius: 12px;\">
        <h1 id='test' style=\"
            text-align: center;
            color: white;
            padding: 5 5 5 5px;\">
          Hello, Docker World!
          </br>
          </br>
          ヾ(＾∇＾)
        </h1>
      </div>
    </body>
  </html>"
end
