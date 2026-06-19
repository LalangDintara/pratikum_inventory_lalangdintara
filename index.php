<!doctype html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Inventory | Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fontsource/source-sans-3@5.0.12/index.css"
        integrity="sha256-tXJfXfp6Ewt1ilPzLDtQnJV4hclT9XuaZUKyUvmyr+Q=" crossorigin="anonymous" />
    <link rel="stylesheet" href="AdminLTE-4.0.0-rc7/dist/css/adminlte.css" />
    <style>
    body {
        height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
        background-image: url("assets/img/molecule-pattern.png");
        background-repeat: no-repeat;
        background-size: cover;
        background-position: center;

    }

    .login-container {
        width: 100%;
        max-width: 400px;
        padding: 15px;
    }

    .login-container .card {
        border: none;
        border-radius: 12px;
        box-shadow: 0 10px 30px rgba(0, 0, 0, 0.08); /* Bayangan halus */
        transition: transform 0.3s ease;
    }

    .login-container .card-header {
        background-color: #ffffff; 
        border-top-left-radius: 12px; /* Menyesuaikan tumpulnya corner card */
        border-top-right-radius: 12px;
        border-bottom: 1px solid #f1f5f9;
        padding-top: 25px;
    }

   .login-container .btn-primary {
        background-color: #3abbdb; 
        border-color: #3abbdb;
        padding: 10px; /* Membuat tombol sedikit lebih tebal dan empuk */
        font-weight: 500;
        border-radius: 6px;
    }

    .login-container .btn-primary:hover {
        background-color: #2b6cb0;
        border-color: #2b6cb0;
    } 
    </style>
</head>

<body>
    <div class="login-container">
        <div class="card card-primary card-outline mb-4">
            <div class="card-header text-center">
                <img src="assets/img/logo.png" width="80" height="80" alt="icon">
                <h3 class="card-title float-none">PT Apotek Obat Abet</h3>
            </div>
            <form action="login.php" method="post">
                <div class="card-body">
                    <div class="mb-3">
                        <label for="username" class="form-label">Username</label>
                        <div class="input-group">
                            <input type="text" class="form-control" name="username" id="username"
                                placeholder="Masukkan Username" required />
                        </div>
                    </div>
                    <div class="mb-3">
                        <label for="password" class="form-label">Password</label>
                        <div class="input-group">
                            <input type="password" class="form-control" name="password" id="password"
                                placeholder="Masukkan Password" required />
                        </div>
                    </div>
                </div>
                <div class="card-footer">
                    <button type="submit" class="btn btn-primary w-100">Sign In</button>
                    <p class="mt-3 mb-1 text-center">
                        <a href="register.php">Register a new membership</a>
                    </p>
                </div>
            </form>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>