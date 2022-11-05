#include <chrono>
#include <cpr/cpr.h>
#include <string>
#include <iostream>
#include <thread>


using namespace std;

int main (int argc, char *argv[])
{
  cpr::Url url = cpr::Url{"https://api.live.bilibili.com/relation/v1/Feed/heartBeat"};
  cpr::Header header = cpr::Header{{"Content-Type", "application/json"}};
  cpr::Cookies cookies = cpr::Cookies{{"DedeUserID", "5147381"}, {"DedeUserID__ckMd5", "5bf4ad13c9356eb5"}, {"SESSDATA"," 13eb18c7%2C1678110956%2C8eb43%2A91"}};
  int count = 0;
  while (1)
  {
    ++count;
    cpr::Response t = cpr::Get(url, header, cookies);
    std::cout << "sending heart " << count << std::endl;
    std::cout << t.text << std::endl;
    std::this_thread::sleep_for(std::chrono::seconds(300));
    std::cout << "Sleeping until next 3 mins..." << std::endl;
  }
  return 0;
}
