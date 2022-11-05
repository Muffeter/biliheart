#include <chrono>
#include <cpr/cpr.h>
#include <string>
#include <iostream>
#include <thread>


using namespace std;

int main (int argc, char *argv[])
{
  cpr::Url url1 = cpr::Url{"https://api.live.bilibili.com/relation/v1/Feed/heartBeat"};
  cpr::Url url2 = cpr::Url{"https://live-trace.bilibili.com/xlive/rdata-interface/v1/heartbeat/webHeartBeat"};
  cpr::Header header = cpr::Header{{"Content-Type", "application/json"}};
  cpr::Cookies cookies = cpr::Cookies{{"DedeUserID", "5147381"}, {"DedeUserID__ckMd5", "5bf4ad13c9356eb5"}, {"SESSDATA","13eb18c7,1678110956,8eb43*91"}};
  int count = 0;
  while (1)
  {
    ++count;
    cpr::Response t1 = cpr::Get(url1, header, cookies);
    cpr::Response t2 = cpr::Get(url2, header, cookies);
    std::cout << "sending heart " << count << std::endl;
    std::cout << t1.text << std::endl;
    std::cout << t2.text << std::endl;
    std::this_thread::sleep_for(std::chrono::seconds(300));
    std::cout << "Sleeping until next 3 mins..." << std::endl;
  }
  return 0;
}
