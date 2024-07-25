from binance.client import Client

# Khai báo thông tin API key và API secret
api_key = 'YOUR_API_KEY'
api_secret = 'YOUR_API_SECRET'

# Khởi tạo client
client = Client(api_key, api_secret)

# Lấy thông tin về các symbol và minQty
exchange_info = client.futures_exchange_info()
# print(exchange_info)
# Lấy minQty của từng symbol và lưu vào một dictionary
min_qty_values = {}
for symbol_info in exchange_info['symbols']:
    symbol = symbol_info['symbol']
    filters = symbol_info['filters']
    for f in filters:
        if f['filterType'] == 'MIN_NOTIONAL' and symbol == 'ETHUSDT':
            min_qty_values[symbol] = float(f['notional'])

# In ra minQty của từng symbol
for symbol, min_qty in min_qty_values.items():
    print(f"Symbol: {symbol}, minQty: {min_qty}")
