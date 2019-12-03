# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Booking.destroy_all
Rating.destroy_all
Favorite.destroy_all
Skivent.destroy_all
User.destroy_all
Resort.destroy_all

puts "Creating the users"

u1 = User.create! name: "Amandine", description: "I started skiing when I was 2 years old, I really enjoy the snow and the winter", hobbies: "skiing, knitting", car: true, level: "expert", email: "caramandine@gmail.com", password: "password123", picture: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/rdw8huo8s0zfs5wvdzcl.jpg"
u2 = User.create! name: "Chloé", description: "I love skiing and meeting people who have positive vibes!", hobbies: "cooking, travelling", level: "intermediate", car: true, email: "sauratchloe@gmail.com", password: "password123", picture: "https://avatars1.githubusercontent.com/u/55254804?v=4"
u3 = User.create! name: "Ryan", description: "I was a professional skier when I was a teenager, I love challenge and hard slopes", hobbies: "hikking, swimming", car: true, level: "expert", email: "ryansalah0@gmail.com", password: "password123", picture: "https://media.licdn.com/dms/image/C5603AQGjh9zf54-xQA/profile-displayphoto-shrink_100_100/0?e=1579737600&v=beta&t=cq63vIyjXk8wXMWu_HftNoGS1W3MrLiPD9-yjh4ub9s"
u4 = User.create! name: "Charlotte", description: "My perfect ski's journey: starting with a coffee, skiing, big break for a lunch skiing again and ending with a beer! ", hobbies: "running, tasting new beer", car: false, level: "intermediate", email: "charlottemontane@hotmail.com", password: "password123", picture: "https://avatars1.githubusercontent.com/u/55248679?v=4"
u5 = User.create! name: "Camille", description: "I am a beginner but I am persevering. I would like some advice!", level: "beginner", car: false, email: "mycatisamazing@gmail.com", hobbies: "cinema, reading",password: "password123", picture: "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBw8PDw8NDQ0PDw4PDQ8ODQ8NDQ8NDQ4PFREWFhURFRUYHSggGBolHRUVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGBAQGiseHh4tLS0tLSsrKy01LS0tLS0rLS0rKy0tLS0rLS0tLSstLSstKy0tLS0tLS04Ky0tLS0tL//AABEIAKUBMQMBIgACEQEDEQH/xAAbAAEBAAIDAQAAAAAAAAAAAAAAAQIDBAUGB//EADQQAAIBAgQEAwYFBQEAAAAAAAABAgMRBBIhMQVBUXEGImETMoGRocFSYrHR8AcUFSNC4f/EABkBAQEBAQEBAAAAAAAAAAAAAAABAgMEBf/EACARAQEBAQACAgIDAAAAAAAAAAABAhEDIRJREzEiMkH/2gAMAwEAAhEDEQA/APqQANoAFCBQAAAAAAAAAABweMcRjh6TqScVbnJ5Yr1b6bv4BXOB8wxPjl1Z2pzahfWb8s32Tdkdlw3js5NOni5Zk1ejiEpqS6xlz7Kxz/JHT8V496DjcPxarQzWyyTyzje+WS3V+a9TknRzAAEAAAAAEBSACFAEAAUAAEIZEAgAAhizIjAxBQBtAKAAKEAAAAAAAAAwRsDTisXClCVSpLLCEXKcrXUUuZ8q8WeI6nEI5KdL2WHjO96r1qaNJrotTZ/VHH1YVadFStBU80k75Kj180lztrufMeL4nFVGms3s7KKajKKfZb29TlrXfTtnPJ13bpUVs2qiesczd5czteEtueSUssbr3k249mnp9DzPDcC9J1Vedr3cm5fFcjn4jiDilFuHor3v+hxsdpX2PgPF6NPDzqVKqbUpZ22ruzsn3f3JhPHuCnP2cpSg7uzlHyvlfQ+NU+IO68srPe2vfTn8Gc6dpJVI2clt1+D+R1m7xyuI+84fH0alvZ1YSvtlkm2ck+CYSpUTum1d3i07OPr6HvPC3i+orYbG3k02oVW7zfRPr37G5ti4+nvwaMLi4VY5oSTV7Pk0+jXI3m2AABAAAQAAQAAAAFCFAGIKQAYsyMWBAABtKQoQKAAAAAAAAAADAbA+PePOE4r/ACEqs6cp0N6E5+dJaPLF8tXLQ87jKFr1NVe0ZKT0T5W029GfYfGHFlRw1RwnHM1Zapy15pfc+RY6V6UnHzxad1/11v8Af4Hn3JK9GbbHXVKlrJbvdvTMaYYac3aTev8AH3ORg68WslRRfrf9jt8JRjONoRvqT0vK63DcNUPM5aJ62d4+jOyp0eSi79Vfbr6ndYDgU5atfRHquG+H4JJyXyHy+mvh9vF4bBTlZZdH9H1OfX4JVSzLWy5726XPcx4dTW0S1MOrWsZtrczHmvC3E5QnlqZr+688rSXe+/I+gUZ5ldfU8VxLhKv7SC8y39Uel4Biva0Yy1uvLJPdSW6O3j331XDy457dmADq4AAAgAAEKQAAAoAAIQpABGUjAxBSAbSkKEUAAAAAAAAAADGrsZGMgr5r4/4nD2qw1OEW4xzVZf8ATdtI/K3zR87qShHNkbg021CbvHazUX25aHd+L3JcQrWWZOVkra29f3PK43M5addHpm+u7PPf29E9RnTkpSTv5m+nXfQ+h+E+HuSV7RXPnJnzbCKSne8W76JK0vkfRfDGKflV9efoY03mvf4fCRitDlwdjjYWpeK7G4RtsmzTJllI1ORqrIwmzdwOCjOqltNRnb8y0f2ONUmlq3obOEV4TqrJOMrKV7ST0sMf2c/LP4u+AB6XjAABAAAIAAAAUAAEAAEAAGIKAMykKEUEKAAAAAAAAAMai0a6oyMW9NQr5L/UDh8f7jNGThOyalFJtP7nieP8LrwefKnmV5Ru1rbe3Jn0DxZJTruTV4rK9tN76+hw+I0VLPObbU5JpW5WW1zy61yvXjx/KPnnDMPOUklFXvrmzL7n1zwtwPJTjOVrtclY8XRwKjWhK1k5bcz6tgYpU4Jb5US3q5zxlKrGkrydl9Trsdxipl/1KEF+Kq7fQ5+MoTkvKk3yb5M8LxLwfOpUdbFY6rmzXjGLapJfgS6epJXTnpzf81inLSvSkluopM9DgMW6kczWvoefocHg5RVKElFJJ5LqL/M5Pn2PV8PwkYRyLb1HvrX+PJeKuN0qclQnKV2vcp3c38Fqb/BuKoPFwoxhOnXj5mpRmnJW6tar6HI4n4epzxEq3soTnKzvNXa0tp0/9Oy4bhPZyVTJFSTTurt/NmpeVz1m2PYARd0n1Vwep4AhSAAABAAAAAUAAEAAEAAEBQBkUgCKUgAoAAAAAAABpqw0d+mhuJJBXyzxalTqJyWknNc3qn6baGWAqf3FGLjlzQ8rTT0a0T9bq3yPReJ+DRrRcZNJqWaN9Nbbr6nh6Tr4OrmUbpaShynHv9zy7y9fi3x21LhknUU53cr6XVlb0PW4d2SXTQ6Tg3E44mTtBwyp6Ss3fTod6omJHa2W+nKpzuZygn0OIp2MKuLUVe5ucI21qkYb2RlSk3rayOm9pKtK691ber6mGMxWJisiyJfi1u/gTrfI7vGKyzc1rY0U68ZK6OnpYirL3m+jJwiEnVVGOsXLR8krl77Z9SV7rDO8IP8AJH9DYSKSSS2SSXYp6nzaEACABAAACgAAEKQAQpAAYIwAAAzAAFAAQAAApABQQAUjYAGupC62On4jwajUV5U0pcnHRo7qXc41eLt6NW7fz7GbOtS8eFweB9hUhVj7lVZ487K7tfuv1PRKXMwlBewjTkvPRy05dkrJr0as/iaadXL5ZcuZ5tcl49eLbHIqarQ67HYac43g7O+iauvidin0M4rW5musrztGhxCEknGi6d/ehmUra7pvfY5c4Vmv9lRJ2WkYxep3tuhpqYfN0NTiyvOVMBUqVI2q1I0YqWeKaTqt2tdrZKz0W9z1HAMGk3OySissdOb3+n6nFlRtoegwkFGnBL8KfdvW50xO679OHn1yc+24Ah3eNSABQAAAAAAAAgAEAAAMEAAADMAAAAEUEAFBABQQoAAASxMpRcK11OHUqmsovNa14yktO2zOvxfh2Vm6U1JraM1ZtdLneUKsHs1f5M5C7/Mzrx51+28+TWf0+bYujXw8tVKH5ZK6+HVdjdh+LLaoreq1R77F4OFaOSrFSi9nzT6p8meL414cqUbzp/7Ke+nvLuvvt2PNvxax7nuPV4/Nnfq+q30sZF6qSfZmc8WjztGCf8s0el8OQSc+uVfqTx35XjW78J1hh6c6sklFqN/NJrRI79LkgD1Zz8Xj3u7oADTAAQAAAAIAKCACkAAAAAQpiwAIANhSFAAAAAAAAAAAAAABYohthEBkXNIyhBLZtfG6+oRVEozzyjtZr0dn8i/3K2aa7kktjFrSz1XqEdLxbgkJt1sOlGe8oLSM+3RnA4PPLVmno1ZWenXQ77EQnDz0ne28Ja3Xozra6jWeayp1Le9yk1yl+5yvjkvY7TdueV2aKcLB1ZWtJWlHSSfJ9TmXOjnxSABAEAAAAAAAAAAAAACACAjAEAA2FIAKUgAoIAKCACggAoIAMoo3bJI10zdCPOWiKLCJll6uxFLe2xGVGba2Dy9GYEbILJLkzrcbhdc0NJLVrlI57ZrmwriU4X8y10t69jOjK6tzM9Fdru0jRUhqqkNnq7EWN4JcXCKBcgFBCAZAxAFBLgC3FyACkIAKQgAAADYAABQAAAAgAAAAAVAAbYGxu7sAVGS2IABTFlAVrnoYN6MAg1pa/A01PI8y2btKPJ+oAG1ogAAAACAAAAABABQQAAAAIUAQoAH/2Q=="
u6 = User.create! name: "Stephane", description: "I have been skiing since 1 year, I like to discover new places and sharing my positive attitude", car: true, level: "beginner", hobbies: "hokey, baking", email: "sofarsogood@gmail.com", password: "password123", picture: "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMSERUSEhIQFRIWFRUVFRAVFRIVFxUWFRUWFhUWFRUYHSggGBolGxUWITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGhAQFSsdHx0rKystLSstLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0rNzctLTctNystN//AABEIAOEA4QMBIgACEQEDEQH/xAAbAAEAAgMBAQAAAAAAAAAAAAAABAUBAwYCB//EAD0QAAIBAwIDBAcGBQMFAQAAAAABAgMEESExBRJBUWFxkQYTIoGhscEjQnLR4fAVMjNSYhSS8SQlNENTB//EABkBAQADAQEAAAAAAAAAAAAAAAABAgMEBf/EACIRAQEAAgIDAAMBAQEAAAAAAAABAhEDIQQSMTJBUSIUE//aAAwDAQACEQMRAD8A+xgAxWAAAAAAAAAAABhyxuRK/EIrbV/Ai5SfV8cLl8S2zRO8gvvIqa93KXV+BoRhl5Enx0YeNb9XP8Rh3+R6jfw7WikUjPMU/wCitP8AmjoYVE9mj2c7Gvh52ZOt+I/3a95rhzY1hnwZRaA8Uqqkspns2YWaAAEAAAABAAAAAMhLAAAAAIAAAAPFWqopyk0kt2wPZGr3kY6Zy+xfUqa/E5VcqGYw7esu/uRp5zHPmmPx08fBb3Uq4unLrjuI+TXzA48+S124cUj0wgkekjPbXTyzDR6YwEvGT1ENGExvSLjtIo1XF6Mtba6UvEo1I2QmdPFzacnJw7dCCutb/VKXuf5lgdkyl+OHLG4/WQASqAAAAAGDJgyBgAAAAAAANBy3Fbt1qvKm/Vx27G+3vLjj1xyUJNZy8RWN/a0092Tm7CGImPNlqadPBhu7S08LB5cjxJnqBwZV6GOMjYkbIoxGJtgiulnlI98p6UT1gvIjbVyjBucTxgnRK1NHho3tGtorYnbUzHMepo1yKwbebKwbbTijpSUamtNvCl1j+aIiZ5uVmJvx8lxrDk45lNOtMlF6MXjalSk88usW9+Vvb3MvT0JdzbzcsfW6AAFQAAAAAAAAAAAACOe9KqufVw11bk/dp9WV8NESuPTzX/DGK89SE5HH5F7eh486e0zZTNMDbE43YkwZugiNFkimWitewmZaPGDRD02YyeWEBk8tnpmuSFWjXM0yZsqGpmdWYbPWdDVJiMicVMo9cCk43UexqUfNZ+h2BxtjUxXpfjWvjp9Tsj0eL8Xmc8/0AA0YAAAAGQMAAAYACdMgGCTTkuKSzXn4/JJfQjJmLiWakn2yfzMpHn813k9PhmsY200boo0qaW7M/wCoj2mPq6EqJIgyqlxGEd2IcWg3oy0mjVq4DIcLtMkKoWV9bHsYPKkYlUSA94PEzQ7pGf8AUJkJ9axURpkbc5NczOxMR5nk91TXJaE4oyLZ/bU/xx+aO3OGsv61P8cevedyehw/i8zyPyAAaucAAAAADAAToAASyeajwm+5lP6T8WVtTjJy5VKXLz4zjQg2/HZJNT9uDWk1jOq023Rnly443Vb8fj55Y+0VFKWX5nu5nhGmzll7ftHu9fsnHld124TU0oLr13NlP2exPY0SlW2WX++4sbq9hTjmbSXaQba/rVm/U0lTh/8Aaqnr+GmsPzaM+78dGOG0Gsqq3z5nm2uHFrOpc1bBzWJXcnLsgqMV5YbfmVF7a1KGraqU93LGJpduFuRZWsxi/sL/ADhNsvqF1pucJb1+bWEs+Gx0fCZyl7ivtSyOgjW0ItxcmKieOpz/ABa+cdFuLlVccUy7v1HJR3PH5RkuV/oVlxdSb1er8dfcbbXh85v+jUa7fYXwbEtXyxXVr6UduGWdDjsZeP76nOz4TTjrU9ZT7eZYX+5Nr4m6nwuD1hJPvTL7Y3GumpX8JaN6m97HP2tNp9vfkvaeiJZ5NnDYv19Ps50dqcRwmf8A1EPxLX3nbndwfi83yPyAAaucAAAAAYAAWAABzP8A+hW/PZy0zyyTOb4TmNOEXnGNO7uO745b+st6kf8AHPlr9Dg729VNY5c8q266dhxeTP8AUr1/Bu+K4/yp1vHVmblJ6N4Pdu8rPbh4PNzCP3sIxtWk7ctxW1zUjJ4ko6xppp5fayFVtq1zGfrOaEYqXJSjlOTxvJrdHVThTxlc3jyvHng8RmvuvD+BTHLVbX5p84tqkaUlCNtTqRbXNUqrmnB4w8SxlLuOmtuHTVr62EqjfNLFOTcuaHdnXwLuUE22427fWThE81OKfdypdMJG2XJ7TVU4+K43crnuGcOm588E4/305JprXdJ+87TgtLXU00K+VpBLTfqTuGRMddtM+06utDjuKUJSk+VN+HU665k1FlVTqcrem/n7iKidOQoUuWeJRcqvSC1a7PAlXvHJ0XJVJUqKjhJtOo5NrLTxJcuE12lzCrSpNJaat645sv8AyxmRC4zw2hcS5nJxbSTzDmTxs9Ga4ax7vZy+1n+Vba+k1apKcfVQqU1Hm9ZDKco5xnkee0i1qipyVa3eaUm+emvuvq8dC/4TYQo83LPnbWNI4SS8SF/BIxqOcHLL1azpnfOBnZ+leP2n5JtjNyw9P0L97e4prBxj0lF9UoPHm9EXEZZj7iuNU5J21WNZwqKfKnjbV795ZQ9IJKrCDnzSnJJU0k9/DYq3nl03fyNfA7f/ALhDu1f+01wzvtJKp/5Y+lys/T6IZAO944AAgAAGAAFgAAYaPnHE7NOvFS25vk9vgfSDmuP2eJOSS9peT6mHkY7x27PD5PTKz+q2MtzEGn01NSl8jbQhqcNds+t9OhndvzwQrzgqn97zim/MtItG6LExae1jll6KR6zm144J9rwSjS1UVntevzLWRFuJJJtk60tLajVMN4SWES7KO5Dp1E14llbInGGXxo4lL2cIhOOuxLvkRkyMonH41XXDIzWqyvkVU+CVYv7KeV2Nv5nS0XoSFSGto9vVylKhXWk1PH+OGWNvRSX/ALM9rgi8VPuNdTQi4o9tq7T39HtnxRuitDzWx03MxeiGM0zzVtpxBuU1KOEpNRfcngv/AEas83E6rWiSSfe0c/aUIyqyeMpSb7t9T6Dwu3UKaXV6vxZv4+G8t/xXy+T04/WftLAB3PGAAEAMYMgYAAWAAAIPF7X1lJpbrVeK/QnAWbTLq7cBGOOpvhLBN4vwpUpOopZjOWFHH8unb1KS5rYaPN5cfW9vV4spn3FiqxtVx5FI7gg33FsYhFOU3oorVmXs6pjte3fFVHRa+BHpQlUft7f2/mQ+HWEo/aVGud9FtHPZ2vvPXErqcIOUMcy+JM7q+pJ0tqtJZXdsWNOOEcHY+ktTKVaEVrpJN/FPY6OnxiONzWXTK42rO+pIqqlvLl9nc03XHYpPVab67FBaencJVPVulNRzpN6Z93Qiza2Ms6dVZ1ZaZRZU6pU0qynDmW3RkH+LuE+SaSfR9q7UZ70tcNun9YkaZ1MlZC/TW/uPSuyfZT00310aqmcab7fmJVco90afNKMVvlfF4LY9sMrq7T+E2HrKm2Kaw5f5Pojq0arW3VOKivPtfabT0OPD1mnmc3LeTLbIMGS7EAAAABDAACwAAAAAqfSaP2KfZJfVHDXcvaT7zvuPwzQl3YfxRwFym14P6nD5c+PQ8O9WId5SqNqMN5dei8SZwuxjRTb1m95fRdxMgljJpuZqK3OTjnfbv9v03Krk011lZ08CJRvFnfQkTqJ7fv3HR0i7U3E7DK0xsc1cVKlP2ctrp1Z2s4t5+XeV9zwxtZe+vRhHxS2VvKprOWnZt/yy2o8Dg2nr4G+2o+rWqfiWFKbwtu0aT7WJtrTSjjolsROMcLVWMdcSjnD8d0yQp4W4hVemSlwWnIpreM4dW0iTRrt+JIqQxUTWzWq7zNamotyXwMb1dJt23WVTOTquBcIxJVpSTTScYY2eurZytlHRH0S0p8tOMeyKXvxqdvi4yzbzfKzs6jcADtcAAAAAAGTABphAAAZMADIMADTfUuanOPbFpePQ+eVo6469h9JOD9I7b1deXSMtV7/1Obysd47/AI6/Ey1lpEoVNMPwK3idtUmmoSRmpXafcyXbVts9Tz49Hfbk4+i9bDlKvU5uxPC8jfDh9xFey8y75yj+aOyeJIjxjHql8i8zt+tsctOYhUu44fqqmnTMZImVeP1orEqDz2uM18MHQ0ZJPKaa7GWSrR7vNG8mNaXOfxxD4lV+9TUu5Rn+RiPF3nHqKvuTx8jrrmv/AGr36FbUo51k0RlqIsxs3pz1XjklnloV5PqlHTzZv4NxidRtOlUi08e1H6l7bWaeyWDF1FR0S96Mrnvpjlp7o09cs119Wl72eXcpLB5ovPtGetqbWvCLfnrQj0ym/Bas7sofRey5Yese8tvwl6epw4euOnk8+ftltkAGrEAAAAADJgAeRkwAPRgwAlnIyYAGclP6U2inQcvvQ1T8XhotyFxpfYT8PqiMpuVOP5R8vr087HuznhPPctPEkXawyNs8+emTytdvWWUHjbJruXlG22jzdyJDt17xY1xyc/VquK6s1Rvmtnv1OguLCLKurwWTeVJe9Eza6L/EdcuT22RMtazl4d5socIcdXhklW2NMYItQ2QuMLBpvp8qMVY8mXo33kTiFVySXUmYs8skD1+ZY6FpbVP07yFTopaY1LC2hqvkJ1Wd76fR+ExxRpr/AAXyJZF4b/Sp/gj8kST1Y8m/WQYyZyEAMADIMGQAAA8gGAMgIMADAAyQuNP7CfgvmiaVvH54otdrS+v0Iy/Gr4TeUcHewzlFYquH8MF7cRKe8t86pHlS9vVSrKeudV+hbQqp4af6nM21zhkmnxDEsab48wmOg3em3uHL3lQr5rqsfvU9UeLKWqae23YTteZLTHkYUlqV74jnwPFbiCw8MIta+JVVqupWzqdf0NNzdttvO+x5tlz75a0y/wAif0z+p9nHLy0WtCPUj21JJdxMp7mcu609dR3fDH9jT/CiSQeDTzRj715MnHrz48bKd0ABKoAABnJgAZyDGQEsAAIAAAAAApfSWp7MY9c5+GC4q1FFNvZHKcRuPWTcvJdxjz5zHHX9dHj4XLLf8Vs0Qq0Se1g1VaeTzXpOcv7fRuO5z9xcyj2o7G5pdO0ob616Y/UtKjSjfFZbGafFZLGF8ReWSz7OnyIn+mZfpHayhxeb06G+N3369UV1C3f/ACWNnZptZ1ZW1OtpVlQdTXZfvYvrS2SW2nQ02lqktdO4tKNLQrldreumaKJEImYU9D00VXdH6PXaUfVt65yu/tRdHF0G1qt0XtlxhPSej/u/M7+Dnlmsnm8/Bd+0W5nJrjVi9FKLfZlZ8j2dTj0yDAAyAAAAAwAAAAAAACq49/Kjn2AcXlfY9DxfxrTUPE9gDjdavuyqudve/kATCqO73IsAC5G6GzLqy/kXh9QCiYtbYnwMghKRDYywAlvoGxgE4/Yrfisvv/Mt/CX0PoUQD1sPjxuT8mQAWUoZQAIAAJf/2Q=="
u7 = User.create! name: "Aline", description: "I have a good level of ski but I just started snowborad!", level: "beginner", car: false, email: "thumbsup@gmail.com", hobbies: "dancing, snowbording", password: "password123", picture: "data:image/jpeg;base64,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"


puts "Creating the resorts"

r1 = Resort.create!(
  name: "Mont-Tremblant",
  number_of_slopes: 102,
  resort_type: "adventurous 🏔️",
  address: "1000 Chemin des Voyageurs, Mont-Tremblant, QC J8E 1T1, Canada",
  latitude: 46.2098453,
  longitude: -74.5874801,
  description: "Tremblant welcomes you with newly updated mountain facilities and a European-style pedestrian village with world-class lodging and amenities, restaurants, boutiques and things to do.Tremblant sits at 875 meters and offers a breathtaking view on the Laurentians. Its ski area covers 305 hectares and includes 102 ski trails on 4 distinct slopes for skiers and snowboarders of all levels.",
  pictures: ["tremblant-village.jpg", "tremblant-ski.jpg", "tremblant-gondola.jpg"],
  url: 'https://www.tremblant.ca/',
  meteo: 'tremblant-meteo.jpg',
  price: 3
)

r2 = Resort.create!(
  name: "Saint-Bruno",
  number_of_slopes: 18,
  resort_type: "kids friendly 🐣",
  address: "550 Rang des Vingt Cinq E, Saint-Bruno-de-Montarville, QC J3V 0G6, Canada",
  latitude: 45.5587079,
  longitude: -73.3369257,
  description: "Geographically located in the heart of the Montérégie, this small ski center, a real incubator for skiers and snowboarders, allows the entire population of Montreal to enjoy the pleasures of skiing. Since 1965, Ski Saint-Bruno has excelled at creating skiers. The ski area is in constant evolution and continually searching for the latest innovations to offer you the best service and ski conditions possible.",
  pictures: ["saint-bruno-village.jpg", "saint-bruno-ski.jpg", "saint-bruno-gondola.jpg"],
  url: 'https://www.skisaintbruno.ca/',
  meteo: 'saint-bruno-meteo.jpg',
  price: 1
)

r3 = Resort.create!(
  name: "Bromont",
  number_of_slopes: 141,
  resort_type: "adventurous 🏔️",
  address: "150 rue Champlain, Bromont, QC J2L 1A2, Canada",
  latitude: 45.3039268,
  longitude: -72.640933,
  description: "Bromont Mountain Experience is known for its largest ski area in North America and its 450-acre skiable terrain. Spread over 7 slopes, 141 trails of which 101 are lit and 32 undergrowth are accessible within 45 minutes of Montreal.",
  pictures: ["bromont-village.jpg", "bromont-ski.jpg", "bromont-gondola.jpg"],
  url: 'https://www.skibromont.com/',
  meteo: 'bromont-meteo.jpg',
  price: 3
)

r4 = Resort.create!(
  name: "Saint-Sauveur",
  number_of_slopes: 40,
  resort_type: "chill ⛄",
  address: "350 Avenue Saint-Denis, Saint-Sauveur, QC J0R 1R3, Canada",
  latitude: 45.8815261,
  longitude: -74.1529596,
  description: "Sommet Saint-Sauveur and its versant Avila offer you 40 trails, from the bunny hill to those dedicated to experts, mogul enthusiasts and set up fanatics. Enjoy!" ,
  pictures: ["saint-sauveur-village.jpg", "saint-sauveur-ski.jpg", "saint-sauveur-gondola.jpg"],
  url: 'https://www.sommets.com/fr/montagne-de-ski/sommet-saint-sauveur/',
  meteo: 'saint-sauveur-meteo.jpg',
  price: 1
)

r5 = Resort.create!(
  name: "Sutton",
  number_of_slopes: 60,
  resort_type: "chill ⛄",
  address: "671 Rue Maple, Sutton, QC J0E 2K0, Canada",
  latitude: 45.1047107,
  longitude: -72.5640799,
  description: "Mont SUTTON has a unique concept of glades for every category of skiers. With 45% of its skiable domain being glades, ski in an environment made of an omnipresent nature. Have fun creating your own path at every descent: thanks to our 204 junctions. Discover all the technical aspects of Mont SUTTON." ,
  pictures: ["sutton-village.jpg", "sutton-ski.jpg", "sutton-gondola.jpg"],
  url: 'https://montsutton.com/',
  meteo: 'sutton-meteo.jpg',
  price: 1
)

r6 = Resort.create!(
  name: "Mont Orford",
  number_of_slopes: 44,
  resort_type: "expert ⛷️",
  address: "58 Rue des Floralies, Austin, QC J0B 1B0, Canada",
  latitude: 45.2855645,
  longitude: -72.2492733,
  description: "Mont-Orford stands 850 meters tall in the heart of the National Park, overlooking the cities of Magog, Orford and Eastman, and offers stunning panoramic views of the many surrounding lakes, mountains and natural landscapes. Easy to access, 5 minutes from Highway 10; 20 minutes from Sherbrooke; and only 1 hour from Montreal. Come discover, or rediscover, Mont-Orford’s beautiful and cozy winter scenery." ,
  pictures: ["orford-village.jpg", "orford-ski.jpg", "orford-gondola.jpg"],
  url: 'https://montorford.com/',
  meteo: 'orford-meteo.jpg',
  price: 2
)

r7 = Resort.create!(
  name: "Le Massif de Charlevoix",
  number_of_slopes: 53,
  resort_type: "chill ⛄",
  address: "185 Chemin du Massif, Petite-Rivière-Saint-François, QC G0A 2L0, Canada",
  latitude: 47.2793799,
  longitude: -70.6112265,
  description: "Le Massif de Charlevoix is ​​the highest vertical drop east of the Rockies, a spectacular view of the river and mountains, and powdery snow for as far as the eye can see. An authentic mountain where nature is respected. A place to get away from the hectic schedules and concrete. Le Massif is the simple pleasure, without artifice. Pure, raw fun." ,
  pictures: ["massif-village.jpg", "massif-ski.jpg", "massif-gondola.jpg"],
  url: 'https://www.lemassif.com/',
  meteo: 'massif-meteo.jpg',
  price: 3
)

puts "Creating the Skivents"

s1 = Skivent.create!(
  title: "Sport day in Mont-Tremblant",
  date: Date.new(2019,12,7),
  level: "expert",
  number_of_place: 3,
  car: true,
  description: "Join me for a day of skiing at Mont-Tremblant. Come with your picnic and your smile, we will have so much fun!",
  resort: r1,
  user: u1
)

s2 = Skivent.create!(
  title: "Enjoying the slopes in Saint-Bruno",
  date: Date.new(2019,12,8),
  level: "intermediate",
  number_of_place: 2,
  car: true,
  description: "Let's discover this moutain together close to Montreal! Would like to try the new restaurant of the resort for the lunch.",
  resort: r2,
  user: u2,
  remote_photo_url: "", 
)

s3 =  Skivent.create!(
  title: "Off-track skiing in Bromont",
  date: Date.new(2019,12,22),
  level: "expert",
  number_of_place: 2,
  car: true,
  description: "I would like to test the Off-tracks next Sunday. Come with me if you like challenges and adventures close to Montreal!",
  resort: r3,
  user: u3
)

s4 = Skivent.create!(
  title: "Cool day in Saint-Sauveur",
  date: Date.new(2019,12,21),
  level: "intermediate",
  number_of_place: 3,
  car: true,
  description: "If you like the perfect balance between skiing and chilling near Montreal, this trip is for you .",
  resort: r4,
  user: u4
)

s5 = Skivent.create!(
  title: "Lets try the spa!",
  date: Date.new(2019,12,28),
  level: "beginner",
  number_of_place: 3,
  car: true,
  description: "I love the mountain and the snow, but even more wine and cocooning! Come chill with me!",
  resort: r1,
  user: u7
)

s6 = Skivent.create!(
  title: "Bromont by night",
  date: Date.new(2019,12,10),
  level: "intermediate",
  number_of_place: 2,
  car: true,
  description: "After work on the slopes, and maybe a beer together. Departure at Laurier Station ( Montreal ) at 5pm, return at 11pm.",
  resort: r3,
  user: u1
)

s7 = Skivent.create!(
  title: "Snowboarding with my cute cat",
  date: Date.new(2019,12,14),
  level: "intermediate",
  number_of_place: 3,
  car: true,
  description: "Bring your cat, we will test the snowboard with them!.",
  resort: r5,
  user: u5
)

s8 = Skivent.create!(
  title: "Ski for devs",
  date: Date.new(2019,12,8),
  level: "intermediate",
  number_of_place: 3,
  car: true,
  description: "If you are a Ruby dev like me, lets talk about loops and gems on the gondola.",
  resort: r6,
  user: u7
)

s9 = Skivent.create!(
  title: "Beer trip",
  date: Date.new(2019,12,15),
  level: "expert",
  number_of_place: 3,
  car: true,
  description: "Some ski but more beers! I want to test Trou du Diable, and you?",
  resort: r1,
  user: u4
)

s10 = Skivent.create!(
  title: "Kids friendly",
  date: Date.new(2019,12,16),
  level: "beginner",
  number_of_place: 2,
  car: true,
  description: "I want to teach ski to my 2years old son. Come with me and your kid, we will take pictures of them during their lesson, and enjoy hot chocolate!",
  resort: r1,
  user: u2
)

s11 = Skivent.create!(
  title: "Ski with view",
  date: Date.new(2019,01,11),
  level: "chill",
  number_of_place: 3,
  car: true,
  description: "I would like to discover the Saint Laurent from the top of the mountain. Heard that the view is amazing and the resort very cool.",
  resort: r7,
  user: u1
)

s12 = Skivent.create!(
  title: "Riding New year's eve",
  date: Date.new(2019,12,31),
  level: "beginner",
  number_of_place: 3,
  car: true,
  description: "I just arrived in Montreal, and I'm alone for for the December 31th. Do you want to join me and party on the slopes?!",
  resort: r3,
  user: u1
)

s13 = Skivent.create!(
  title: "Guys trip",
  date: Date.new(2019,01,18),
  level: "chill",
  number_of_place: 2,
  car: true,
  description: "My brother is coming in January, and I want show him the country. Some guys joining us?!",
  resort: r5,
  user: u3
)

s14 = Skivent.create!(
  title: "Snowboard club",
  date: Date.new(2019,12,16),
  level: "expert",
  number_of_place: 3,
  car: true,
  description: "Let's create a team of snowboarders!",
  resort: r6,
  user: u5
)

s15 = Skivent.create!(
  title: "Ski & fun",
  date: Date.new(2019,12,1),
  level: "chill",
  number_of_place: 2,
  car: true,
  description: "I love Sutton, I know this resort very well and I would like share my tips with someone!",
  resort: r5,
  user: u7
)

s16 = Skivent.create!(
  title: "Discovering the ski",
  date: Date.new(2019,12,20),
  level: "beginner",
  number_of_place: 3,
  car: true,
  description: "Living in Montreal, I am not really a great rider, can someone help me improve my style?",
  resort: r4,
  user: u2
)


s17 = Skivent.create!(
  title: "Come with me in Saint-Sauveur resort",
  date: Date.new(2020,11,30),
  level: "beginner",
  number_of_place: 1,
  car: true,
  description: "I love skiing but I would love meet someone around Montreal who want teach me to be more confident when I am skiing ",
  resort: r4,
  user: u4
)

s18 = Skivent.create!(
  title: "A great day in Mont Orford",
  date: Date.new(2020,11,16),
  level: "expert",
  number_of_place: 2,
  car: true,
  description: " I Love Skiing and I Love Surfing of course! Come with me to have a really great day in Mont Orford! ",
  resort: r6,
  user: u2
)

s19 = Skivent.create!(
  title: "Discover Sutton resort with me",
  date: Date.new(2020,11,16),
  level: "intermediate",
  number_of_place: 1,
  car: true,
  description: " I love the feeling of going fast in skiing but I love enjoy life and its pleasures too! ",
  resort: r5,
  user: u3
)

s20 = Skivent.create!(
  title: "Bromont by night with fun!",
  date: Date.new(2020,11,16),
  level: "expert",
  number_of_place: 1,
  car: true,
  description: " I love skiing. It is freedom on all fronts - physical, mental and emotional. I want meet people like me to enjoy this night in Bromont. Back in Montreal at 23pm",
  resort: r3,
  user: u6
)

s21 = Skivent.create!(
  title: "Saint Bruno will not have secrets anymore for you!",
  date: Date.new(2020,11,16),
  level: "expert",
  number_of_place: 1,
  car: true,
  description: "Skiing is one of my favorite things to do in this whole world. You won't regret it if you join me. (Near to Montreal) ",
  resort: r2,
  user: u5
)

s22 = Skivent.create!(
  title: "Sports day in Mont Orford",
  date: Date.new(2019,12,21),
  level: "expert",
  number_of_place: 1,
  car: true,
  description: "Sports day, few breaks but the opportunity to enjoy the outdoors.",
  resort: r6,
  user: u3
)

s23 = Skivent.create!(
  title: "A slalom in Sutton",
  date: Date.new(2019,11,22),
  level: "expert",
  number_of_place: 3,
  car: true,
  description: "Who wants to join me and organize a slalom? We will have so much fun! ",
  resort: r5,
  user: u1
)

s24 = Skivent.create!(
  title: "Skiing and taking pictures in Mont-Tremblant",
  date: Date.new(2019,12,8),
  level: "intermediate",
  number_of_place: 3,
  car: false,
  description: "I want to ski and to take pictures all day long, I could take long break to have the perfect picture. Let's try to find the perfect spot",
  resort: r1,
  user: u2
 )

s25 = Skivent.create!(
  title: "Improving my ski level in Bromont",
  date: Date.new(2019,11,7),
  level: "beginner",
  number_of_place: 2,
  car: true,
  description: "I haven't been skiing since a long time (since I live in Montreal actually), I want this feeling back! Join me if you want to ski and laugh!",
  resort: r3,
  user: u7
)

 s26 = Skivent.create!(
  title: "Snowboarding in Saint-Sauveur ",
  date: Date.new(2019,12,12),
  level: "intermediate",
  number_of_place: 0,
  car: false,
  description: "I want to discover Saint-Sauveur's slopes! Just to let you know, I am a snowborder but I am totally open to have fin with skiers! Departure from Montreal.",
  resort: r4,
  user: u5
  )


puts "Creating the ratings"


Rating.create!(
  user: u2,
  skivent: s23,
  rating: 5,
  review: "Amandine is very nice, she show me how to ski on one foot. I would love to have another day with her")
Rating.create!(
  user: u1,
  skivent: s18,
  rating: 4,
  review: "I had a amazing day with Chloe, we laughed so much! She is nice and punctual")
Rating.create!(
  user: u4,
  skivent: s19,
  rating: 5,
  review: " Ryan is a very good teacher, patient and diplomat. He had a professional level but he is happy to share his knowledge")
Rating.create!(
  user: u5,
  skivent: s17,
  rating: 4,
  review: "Charlotte is so fun! The day with her was really rythmed by sport time and fun time.")
Rating.create!(
  user: u7,
  skivent: s21,
  rating: 4,
  review: "I went to Mont-Tremblant with Camille and we had a perfect day. She was happy to take my advices.")
Rating.create!(
  user: u7,
  skivent: s17,
  rating: 5,
  review: "Charlotte is a very enthusiastic girl! We discovered the resort together, it was a chill day.")
Rating.create!(
  user: u1,
  skivent: s15,
  rating: 4,
  review: "So great")

puts "Booking booking"

b1 = Booking.create!(
  user: u3,
  skivent: s2,
  status: "accepted"
)

b2 = Booking.create!(
  user: u4,
  skivent: s5,
  status: "accepted"
)

b3 = Booking.create!(
  user: u7,
  skivent: s8,
  status: "declined"
)

b4 = Booking.create!(
  user: u2,
  skivent: s8,
  status: "declined"
)

b5 = Booking.create!(
  user: u1,
  skivent: s8,
  status: "accepted"
)

b6 = Booking.create!(
  user: u4,
  skivent: s10,
  status: "accepted"
)

b7 = Booking.create!(
  user: u6,
  skivent: s13,
  status: "accepted"
)

b8 = Booking.create!(
  user: u1,
  skivent: s15,
  status: "accepted"
)

b9 = Booking.create!(
  user: u5,
  skivent: s17,
  status: "accepted"
)

b10 = Booking.create!(
  user: u7,
  skivent: s17,
  status: "accepted"
)

b11 = Booking.create!(
  user: u1,
  skivent: s18,
  status: "accepted"
)

b12 = Booking.create!(
  user: u4,
  skivent: s19,
  status: "accepted"
)

b13 = Booking.create!(
  user: u7,
  skivent: s21,
  status: "accepted"
)

b14 = Booking.create!(
  user: u2,
  skivent: s23,
  status: "accepted"
)

b15 = Booking.create!(
  user: u7,
  skivent: s9,
  status: "accepted"
)

b16 = Booking.create!(
  user: u2,
  skivent: s11,
  status: "accepted"
)

b17 = Booking.create!(
  user: u1,
  skivent: s7,
  status: "accepted"
)

puts "Creating favorites <3"

f1 = Favorite.create!(
  user: u2,
  skivent: s1,
)

f2 = Favorite.create!(
  user: u1,
  skivent: s9,
)

f3 = Favorite.create!(
  user: u4,
  skivent: s15,
)

f4 = Favorite.create!(
  user: u6,
  skivent: s6,
)

f5 = Favorite.create!(
  user: u2,
  skivent: s5,
)

f6 = Favorite.create!(
  user: u5,
  skivent: s9,
)


puts "Seeds Completed"



