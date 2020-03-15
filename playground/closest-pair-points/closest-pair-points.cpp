
#include <cstdlib>

const int N = 10000;
const int RANGE = 1000;

struct point {
    int x;
    int y;
};
using Point_t = struct point;

double distance(const Point_t& p, const Point_t& q) {
    return std::sqrt(std::pow(p.x-q.x,2) + std::pow(p.y-q.y,2));
}

int main() {

    Point_t points[N];

    for (int i = 0; i < N; i++) {
        points[i].x = std::rand() % RANGE;
        points[i].y = std::rand() % RANGE;
    }

    std::pair<Point_t,Point_t> closest_points_pair;
    double mindist = std::numeric_limits<double>::max();
    int p, q;

    for (int i = 0; i < N; i++) {
        for (int j = i; j < N; j++) {
            double dist = distance(points[i],points[j]);
            if (dist < mindist) {
                mindist = dist;
                p = i;
                q = j;
            }
        }
    }
    
    closest_points_pair->first = points[p];
    closest_points_pair->second = points[q];


    std::cout << closest_points_pair->first;

}
