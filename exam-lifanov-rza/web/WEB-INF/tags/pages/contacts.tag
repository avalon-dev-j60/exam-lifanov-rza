<%-- 
    Document   : contacts
    Created on : 30.06.2019, 1:10:07
    Author     : lifas
--%>

<%@tag description="put the tag description here" pageEncoding="UTF-8"%>

    <article class="row">
        <section class="two small-tablet thirds padded">
          <h1>Наши контакты</h1>
          <p>В случае появления вопросов напишите нам на почту. Мы с радостью поможем Вам!</p>
          <form>
            <fieldset>
              <legend></legend>
              <div class="row">
                <div class="one small-tablet fourth padded no-pad-bottom-mobile">
                  <label for="name">Ваше имя</label>
                </div>
                <div class="three small-tablet fourths padded no-pad-top-mobile">
                  <input id="name" name="name" type="text" placeholder="Введите имя...">
                </div>
              </div>
              <div class="row">
                <div class="one small-tablet fourth padded no-pad-bottom-mobile">
                  <label for="email">Ваша почта</label>
                </div>
                <div class="three small-tablet fourths padded no-pad-top-mobile">
                  <input id="email" name="email" type="text" placeholder="Введите почту...">
                </div>
              </div>
              <div class="row">
                <div class="one whole pad-left pad-right pad-top">
                  <label for="message">Ваше сообщение</label>
                </div>
              </div>
              <div class="row">
                <div class="one whole pad-left pad-right pad-bottom">
                  <textarea id="message" name="message" placeholder="Введите ваше сообщение"></textarea>
                </div>
              </div>
              <div class="row">
                <div class="one whole padded align-right">
                  <button type="submit" class="asphalt">Отправить сообщение...</button>
                </div>
              </div>
            </fieldset>
          </form>
        </section>
        <aside class="one small-tablet third padded border-left no-border-mobile">
          <h3>Наше местоположение</h3>
          <h5>
            <address>Россия, 195251, Санкт-Петербург, ул. Обручевых , д. 1</address>
          </h5>
          <p class="double-gap-bottom"><a href="https://yandex.ru/maps/2/saint-petersburg/?l=map&ll=30.378786%2C60.012660&mode=routes&rtext=~60.012665%2C30.378777&rtt=auto&ruri=~ymapsbm1%3A%2F%2Fgeo%3Fll%3D30.379%252C60.013%26spn%3D0.005%252C0.007%26text%3D%25D0%25A0%25D0%25BE%25D1%2581%25D1%2581%25D0%25B8%25D1%258F%252C%2520%25D0%25A1%25D0%25B0%25D0%25BD%25D0%25BA%25D1%2582-%25D0%259F%25D0%25B5%25D1%2582%25D0%25B5%25D1%2580%25D0%25B1%25D1%2583%25D1%2580%25D0%25B3%252C%2520%25D1%2583%25D0%25BB%25D0%25B8%25D1%2586%25D0%25B0%2520%25D0%259E%25D0%25B1%25D1%2580%25D1%2583%25D1%2587%25D0%25B5%25D0%25B2%25D1%258B%25D1%2585&source=wizgeo&utm_medium=maps-desktop&utm_source=serp&z=15" role="button" target="_blank" class="green noicon"><i class="icon-map-marker gap-right"></i>Как добраться</a></p>
          <iframe src="https://yandex.ru/map-widget/v1/?um=constructor%3Ac58c13b589d07c63757e3d6044a5dbba04171cd93e5d6106d874d88e2e2e25f3&amp;source=constructor" width="500" height="400" frameborder="0"></iframe>
        </aside>
      </article>