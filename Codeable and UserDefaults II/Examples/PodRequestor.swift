//
//  PodRequestor.swift
//  Codeable and UserDefaults II
//
//  Created by Victor Zhong on 11/4/17.
//  Copyright © 2017 C4Q. All rights reserved.
//

import Foundation

class PodRequestor {
    let urlSession = URLSession(configuration: .default)

    func makeBasicPodsRequest() {
        let url = URL(string: "https://api.myjson.com/bins/tq46v")!
        urlSession.dataTask(with: url) { (data: Data?, _, _) in
            if data != nil {
                do {
                    let pod = try JSONDecoder().decode(Podcast.self, from: data!)
                    print("Pod1: ", pod.podcast)
                }
                catch {
                    print("Error converting Data into Podcast!", error)
                }
            }
            }.resume()
    }

    func makePodInfoRequest() {
        let url = URL(string: "https://api.myjson.com/bins/182vl3")!
        urlSession.dataTask(with: url) { (data: Data?, _, _) in
            if data != nil {
                do {
                    let podInfo = try JSONDecoder().decode(PodInfo.self, from: data!)
                    for pod in podInfo.pods {
                        print("Pod2: ", pod.podcast)
                    }
                }
                catch {
                    print("Error converting Data into Podcast!", error)
                }
            }
            }.resume()
    }

    func madeEpisodeRequest() {
        let url = URL(string: "https://api.myjson.com/bins/n8pev")!
        urlSession.dataTask(with: url) { (data: Data?, _, _) in
            if let data = data {
                do {
                    let episode = try JSONDecoder().decode(Episode.self, from: data)
                    print("Episode: ", episode.title)
                }
                catch {
                    print(error)
                }
            }
            }.resume()
    }

    func makePodWithEpisodeRequest() {
        let url = URL(string: "https://api.myjson.com/bins/mn9t3")!
        urlSession.dataTask(with: url) { (data: Data?, _, _) in
            if let data = data {
                do {
                    let podInfo = try JSONDecoder().decode(PodInfo.self, from: data)
                    for pod in podInfo.pods {
                        if let episodes = pod.episodes {
                            print("Pod with Episodes: ")
                            for ep in episodes {
                                print(ep.title)
                            }
                        }
                    }
                }
                catch {
                    print(error)
                }
            }
            }.resume()
    }

    func makePodInfoWithEpisodeRequest() {
        let url = URL(string: "https://api.myjson.com/bins/18qgcn")!
        urlSession.dataTask(with: url) { (data: Data?, _, _) in
            if let data = data {
                do {
                    let podInfo = try JSONDecoder().decode(PodInfo.self, from: data)
                    print("Pod with Episodes: ")
                    for pod in podInfo.pods {
                        if let episodes = pod.episodes {
                            for ep in episodes {
                                print(ep.title)
                            }
                        }
                    }
                }
                catch {
                    print(error)
                }
            }
            }.resume()
    }

    func makePodInfoWithEpisodeRequestAndMeta() {
        let url = URL(string: "https://api.myjson.com/bins/7xv5z")!
        urlSession.dataTask(with: url) { (data: Data?, _, _) in
            if let data = data {
                do {
                    let podInfo = try JSONDecoder().decode(PodInfo.self, from: data)
                    print("Pod with Episodes: ")
                    for pod in podInfo.pods {
                        if let episodes = pod.episodes {
                            for ep in episodes {
                                print(ep.title)
                            }
                        }
                    }
                }
                catch {
                    print(error)
                }
            }
            }.resume()
    }
}

