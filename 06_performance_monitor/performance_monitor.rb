require 'time'
def measure(powt = 0)
  start_czas = Time.now
  if powt == 0
    yield
  else
    powt.times {|x| wynik = yield(x)}
  end
  (Time.now - start_czas) / (powt == 0 ? 1 : powt)
end
