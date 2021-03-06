//
//  IssuerCodableTests.swift
//  BlockcertsTests
//
//  Created by Chris Downie on 8/4/17.
//  Copyright © 2017 Digital Certificates Project. All rights reserved.
//

import XCTest
@testable import Blockcerts

class IssuerCodableTests: XCTestCase {
    let issuerV1ImageData = "iVBORw0KGgoAAAANSUhEUgAAAW0AAAFtCAYAAADMATsiAAAAAXNSR0IArs4c6QAAAAlwSFlzAAAuIwAALiMBeKU/dgAAActpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IlhNUCBDb3JlIDUuNC4wIj4KICAgPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4KICAgICAgPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIKICAgICAgICAgICAgeG1sbnM6dGlmZj0iaHR0cDovL25zLmFkb2JlLmNvbS90aWZmLzEuMC8iCiAgICAgICAgICAgIHhtbG5zOnhtcD0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLyI+CiAgICAgICAgIDx0aWZmOk9yaWVudGF0aW9uPjE8L3RpZmY6T3JpZW50YXRpb24+CiAgICAgICAgIDx4bXA6Q3JlYXRvclRvb2w+QWRvYmUgSW1hZ2VSZWFkeTwveG1wOkNyZWF0b3JUb29sPgogICAgICA8L3JkZjpEZXNjcmlwdGlvbj4KICAgPC9yZGY6UkRGPgo8L3g6eG1wbWV0YT4KsiN+8QAAIVFJREFUeAHt3QWsHNXbx/FTwYpDcS8EDxCc4NBAiwZIcQ9QPHhIsCKBwh8pEAhaIGiQFncplOAUK+5uLVDc5z3PvsxmZ54zu3tvd+aec893knZ3zo48+zlzf3fv7Egf8/9D8t8jDwgggAACHgv09bg2SkMAAQQQyAkQ2jkQRhFAAAGfBQhtn3uH2hBAAIGcAKGdA2EUAQQQ8Fmgf1FxScJ3k0U2tCOAAAJVCPTp00ethk/aioQGBBBAwF8BQtvfvqEyBBBAQAkQ2oqEBgQQQMBfAULb376hMgQQQEAJENqKhAYEEEDAXwFC29++oTIEEEBACRDaioQGBBBAwF8BQtvfvqEyBBBAQAkQ2oqEBgQQQMBfAULb376hMgQQQEAJENqKhAYEEEDAXwFC29++oTIEEEBACRDaioQGBBBAwF8BQtvfvqEyBBBAQAkQ2oqEBgQQQMBfAULb376hMgQQQEAJENqKhAYEEEDAXwFC29++oTIEEEBACRDaioQGBBBAwF8BQtvfvqEyBBBAQAkQ2oqEBgQQQMBfAULb376hMgQQQEAJENqKhAYEEEDAXwFC29++oTIEEEBACRDaioQGBBBAwF8BQtvfvqEyBBBAQAkQ2oqEBgQQQMBfAULb376hMgQQQEAJENqKhAYEEEDAXwFC29++oTIEEEBACRDaioQGBBBAwF8BQtvfvqEyBBBAQAkQ2oqEBgQQQMBfAULb376hMgQQQEAJENqKhAYEEEDAXwFC29++oTIEEEBACRDaioQGBBBAwF8BQtvfvqEyBBBAQAkQ2oqEBgQQQMBfAULb376hMgQQQEAJENqKhAYEEEDAXwFC29++oTIEEEBACRDaioQGBBBAwF8BQtvfvqEyBBBAQAkQ2oqEBgQQQMBfAULb376hMgQQQEAJENqKhAYEEEDAXwFC29++oTIEEEBACRDaioQGBBBAwF8BQtvfvqEyBBBAQAkQ2oqEBgQQQMBfAULb376hMgQQQEAJENqKhAYEEEDAXwFC29++oTIEEEBACRDaioQGBBBAwF8BQtvfvqEyBBBAQAkQ2oqEBgQQQMBfAULb376hMgQQQEAJENqKhAYEEEDAXwFC29++oTIEEEBACRDaioQGBBBAwF8BQtvfvqEyBBBAQAkQ2oqEBgQQQMBfAULb376hMgQQQEAJENqKhAYEEEDAXwFC29++oTIEEEBACRDaioQGBBBAwF8BQtvfvqEyBBBAQAkQ2oqEBgQQQMBfAULb376hMgQQQEAJENqKhAYEEEDAXwFC29++oTIEEEBACRDaioQGBBBAwF8BQtvfvqEyBBBAQAkQ2oqEBgQQQMBfAULb376hMgQQQEAJENqKhAYEEEDAXwFC29++oTIEEEBACRDaioQGBBBAwF8BQtvfvqEyBBBAQAkQ2oqEBgQQQMBfAULb376hMgQQQEAJENqKhAYEEEDAXwFC29++oTIEEEBACRDaioQGBBBAwF8BQtvfvqEyBBBAQAkQ2oqEBgQQQMBfAULb376hMgQQQEAJENqKhAYEEEDAXwFC29++oTIEEEBACRDaioQGBBBAwF8BQtvfvqEyBBBAQAkQ2oqEBgQQQMBfAULb376hMgQQQEAJENqKhAYEEEDAXwFC29++oTIEEEBACRDaioQGBBBAwF8BQtvfvqEyBBBAQAkQ2oqEBgQQQMBfAULb376hMgQQQEAJENqKhAYEEEDAXwFC29++oTIEEEBACRDaioQGBBBAwF8BQtvfvqEyBBBAQAkQ2oqEBgQQQMBfAULb376hMgQQQEAJENqKhAYEEEDAXwFC29++oTIEEEBACRDaioQGBBBAwF8BQtvfvqEyBBBAQAkQ2oqEBgQQQMBfAULb376hMgQQQEAJENqKhAYEEEDAXwFC29++oTIEEEBACRDaioQGBBBAwF8BQtvfvqEyBBBAQAkQ2oqEBgQQQMBfAULb376hMgQQQEAJENqKhAYEEEDAXwFC29++oTIEEEBACRDaioQGBBBAwF8BQtvfvqEyBBBAQAkQ2oqEBgQQQMBfAULb376hMgQQQEAJENqKhAYEEEDAXwFC29++oTIEEEBACRDaioQGBBBAwF8BQtvfvqEyBBBAQAkQ2oqEBgQQQMBfAULb376hMgQQQEAJENqKhAYEEEDAXwFC29++oTIEEEBACRDaioQGBBBAwF8BQtvfvqEyBBBAQAkQ2oqEBgQQQMBfAULb376hMgQQQEAJENqKhAYEEEDAXwFC29++oTIEEEBACRDaioQGBBBAwF+B/v6WFn5ln3/+uTn11FOdb2T//fc3K620kvO1xsbJkyeb4447rrGp/vy0004zAwcOrI/zxJgvvvjCnHLKKYpir732MmussYZqpwGB0AQI7RJ7bIEFFjCffPKJue+++9RaJNDvuusu1Z5vuPzyy82ll16abzbbbrstga1UjJkyZYrTa4MNNiC0HV40hSfA7pGS++yss85yruHuu+82r7zyivO1tPG3334z//vf/9LRzKN8ymZAAIH4BAjtkvt8+eWXN8OHD3eu5cwzz3S2p4033XST+e6779LR+uO+++5rlllmmfo4TxBAIB4BQruCvj7xxBNN//56T9SNN95o3n33XWcF//77rznjjDPUa3379jWyPAYEEIhTgNCuoN/nn39+c9JJJznXdPbZZzvb7733XmegH3300WbBBRd0zkMjAgj0fgFCu6I+Puyww5xfHMoXjZ9++qmqwrXrZIYZZjAS2q2GP//800ycONE88cQT5uuvv241uZevf//997UjQbwszlFUWeZJkpgvv/zS/P333461Tl1TWTVPXVXM3UpA/83eag5e75bATDPNZORLyb333jszv/xQjho1ypxzzjn19meffdY8+eST9fH0yYgRI8ycc86ZjmYeH374YXPdddeZCRMmmNdeey3z2myzzWZWX3312tETRx11lJllllkyr+dHTj/9dPUl6XbbbWe23377/KS18c8++8wceeSR6jWpZ5pppsm0X3zxxebxxx/PtMn7kn30cnij7BKSX2Q//vijWXfddWu/eDITezTSSfPGtzVp0iRz2WWXGdkOxo0bV7Po06ePWXHFFc1uu+1mDj300NrutuOPP179NSbb2CKLLNK4uMzzsmrOrISRSgQSu5bMPxsmDB0W+Ouvv5Jll1024yzu/fr1S7755pv62oYNG6ammWuuuZKff/65Pk36RJZpf3jV9Pn+TMcHDRqUvPTSS+nszsehQ4eq5Z188snOaaXx9ddfV9PL+uzRL2oe+0tLTTt+/PjE7ttP5phjjsxrNrTV/K0a3njjjcwy0vdtvz9oNWvbr5dhnq78zTffTGzoOt9D+l5WW2215IcffkjsL2I13auvvpouKvNYZs2ZFTHSUYG0zxsf2T1iNaoa5MvIc889V63un3/+MRdddFGtXb6YvOWWW9Q08gl0xhlnzLTLn80bbrih6crhfx988IFZeeWVzRVXXJFZVk+O/PLLL2azzTZzHinTk3W51l2muXyqlr75+OOPXauutz3//PNGjiCy6VBva/akzJqbrZfXyhVQv7E7+uuChWUENtlkE+Vt91fXPj0dfPDB6rUlllgikU9K+cH1idxuJmr+oraiT9xVf9JeddVVnTX7+Em7LPNff/01kb+mivqq3XbXJ+2yas5vj4x3XsDV73zStipVD64TbuREGrsLwsg+3/wgX0rmDxl8+umnnZ/I7Q9+bd+2/TPbfPvtt+bRRx81e+yxR36RtfFjjjnG2V514wsvvFD1Kru1vjLNr7nmmlp/5QubdtppjQ3d2j5u+Stt8803z0/SdLzMmpuumBdLF1C/4Tv/O4MlNgrss88+ytz2smqT/Zf2mO3GWWvja6+9tpp26aWXTuzp8Zlp05GRI0eq6WV9999/fzpJ/bHqT9rp+954442Tq6++OrFfpib2pKLE/tKp19Tuk7L2aUsflGX++++/J/PNN5/qHxvYyTvvvKPeut21paZNDRs/aZdZsyqKhlIE0n7NPdpRR1iUUgELrQvYw/xqX0C67Bvb7Cfl+jzpkxdffNH5QztmzJh0EvVoDxlLFl98cTWf/eSmpu2J0LZHpyR//PGHqqWrDWWFdpnmDzzwgOoX2QZuvfXWwre/0047OedpDO0yay4sjBc6KtCYBelzdo9YiZ4Y5ASZE044oemqhwwZUvuiMT/R22+/nW8ycgLPVlttpdrTBnuEijniiCPS0fqj3a9df95TT2TXz7XXXmtkV4CvQ5nmH374oXrbcqikXBSsaGjneP0yay6qi/byBQjt8o0L1yAhag9zK3zddRq7TPzWW2+peeQyrxLMzQZ7uKF6WS5lag8lVO1VNmyxxRZGThzyeSjT/P3331dvXY4ikWOziwZXX+anLbPm/LoYr06A0K7OWq1p5plnNq4zH2XCXXfdtfB623YXgFrWoosuqtryDXKpWNfgCg3XdGW1hXBafpnm7733nqJdYYUVVFtjw3TTTWfkS+dmQ5k1N1svr5UrQGiX69ty6XKctWuwX8q5mmttcrZgfhgwYEC+SY0XfZr96aef1LRVNjT7a6PKOpqtq0xzl3+rs1al1vzZpvn6y6w5vy7GqxMgtKuz7tia7FEiallys4VWg+wKcQ32LElXc9ttrsvHtj2znbDVbp2uLKusacs0t8fhq7Jffvll1dbYYI/bb3ltljJrbqyF59UKENrVendkbUsttZRajpzp2GpwXZhKvvyzh5tlZpU/vfODXFyoaJBjwnv7UKa5PapH8T311FNNz3j86KOP1Dz5hjJrzq+L8eoECO3qrDu2piWXXFItS05QcR0t0DihXL87P8gXmPkvvFwXpZITdYoG177TomlDbS/T3BXacrLVI488Ush14YUXFr6WvlBmzek6eKxegNCu3nyq12hP+zaufdj2BJrCZcuV/2677Tb1+pZbbqnaXPuYH3zwQeflQeUTn5zN19uHMs3tCVTqF6d4ypmQcgXF/PDQQw+ZdkK7zJrzNTFevYA6UL+jR4izsEIBe+SAsrfdn1x11VWF88gL5513nnO+/fbbL5Ez7BoHe13txH6xpaafffbZE/tlVeOktedXXnmlmlZq2nPPPevT290lib1wUSJnYcprrn/tXuWv2RUEVXEtGuynfmctcmLROuus06V/9iJembWVaW4vbeusW86UtNdiT+xNoGsn2xxwwAHO6VL/xpNrpPgya87gMFKKQNqvuUc76vihK6UCFqoEuhvaEogLLbSQ8wfYnqySrLfeeolcKGjhhRd2TiN9bu/y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qxZVXIuGrob2l19+qUzE0O5qarEmXkagHAFXNrN7xKr0huGee+5Rb0PO9rOfflV7//79a7sBVllllcxrjz32WG3f9iyzzJJpd41st912tWt2TDvttOrlqmtRBfzXcPjhh5tvvvkm8/KSSy6ZGW8ckSNrXIMNc9NsPtc8tCFQlgChXZZsxct955131BrlKoJFwworrGAkvP/+++/MJM8995yRfbvNBplPzhp0BbbMV2UtzeosOgSxaB55X/ILK/+lrIQ2AwK+CBDaPdgTckW59dZbr2UFjz/+uNlpp52aTidfJuaHUaNGmSuuuCLfXB//999/68/TJ5988kn6tPBRjv2WY72LhiprKaqhu+0LLbSQydf/2WefdXdxzIdAxwUI7Y6Ttr9A+XN8vvnmazmDnLjSbLDHEhtX2LZ71EnjsuXMxlbDggsuWDhJ1bUUFtLNF+aff34V2p9//nk3l8ZsCHRegOO0O29a+RLbCdp2i8rvLnHN1+yXSNW1uOqbmraZZppJzV60G0hNSAMCFQjwSbsC5LJXMc8885h+/fqZf/75J7Oqgw46qOlujMzE/43kv5x0TSPrKhqqrqWoju62y8k4+UF2mTAg4IsAoe1LT0xFHX379jXyxaLcIadxkOuLtBPCjfNM7XOfaunOe/nqq6/UbM12B6mJaUCgZAF2j5QMXNXil19+ebWqfIirCUpq8KmWrr5FV2gvsMACXV0M0yNQmgCftEujrXbBSy+9tFqh3AxYjjqZccYZ1Wsvv/yycR0SePPNN5t5551XTd+VBl9quf/++01+H/vCCy9s1l57befbkf35P/30k3qN0FYkNHggoM4EK+f8njiXWnRGZCev8idX3bP7mlU/ylX87AkmGXh7d3jnVQBt2GamkxHXGZEnn3yymq6xoaxaGtfRzvOunhFpP2UrP7kMgA3zdlbHNAh0XMD+blDbJLtHPPiN2YkSllhiCXPBBReoRclFqeR62muttZY55phjate8XmyxxZxXATzzzDPV/N1p8KmWrtTvuumB3K292RevXVk+0yLQCQF2j3RC0ZNl7L///mbMmDHmkUceURU988wzRv4VDXJ1wK222qro5S63+1RLu8Xb67SoSe1fKqqNBgR6UoBP2j2p3+F1y5Eb119/feEdZFyrk3kuueQS56d01/TttvlUS7s15+/kI98FyP0jGRDwSYDQ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"
    
    func testIssuerV1Codable() {
        // Attempt decode
        let issuerV1File = "issuer-v1"
        let testBundle = Bundle(for: type(of: self))
        guard let fileUrl = testBundle.url(forResource: issuerV1File, withExtension: "json") ,
            let file = try? Data(contentsOf: fileUrl) else {
                return
        }
        
        let decoder = JSONDecoder()
        do {
            let issuerV1 = try decoder.decode(IssuerV1.self, from: file)
            XCTAssertEqual(issuerV1.id, URL(string: "http://www.blockcerts.org/mockissuer/issuer/got-issuer.json")!)
            XCTAssertEqual(issuerV1.url, URL(string: "http://www.blockcerts.org/mockissuer/certificates/")!)
            XCTAssertEqual(issuerV1.name, "Game of thrones issuer on testnet")
            XCTAssertEqual(issuerV1.email, "org@org.org")
            XCTAssertEqual(issuerV1.issuerKeys.first?.key, "mmShyF6mhf6LeQzPdEsmiCghhgMuEn9TNF")
            XCTAssertEqual(issuerV1.revocationKeys.first?.key, "mz7poFND7hVGRtPWjiZizcCnjf6wEDWjjT")
        } catch {
            XCTFail()
        }
        
        // Attempt encode
        let imageString = "data:image/png;base64,\(issuerV1ImageData)"
        let imageURL = URL(string: imageString)!
        let data = try! Data(contentsOf: imageURL)
        let testDate = "2016-08-28".toDate()!
        let issuerV1 = IssuerV1(name: "Game of thrones issuer on testnet",
                                email: "org@org.org",
                                image: data,
                                id: URL(string: "http://www.blockcerts.org/mockissuer/issuer/got-issuer.json")!,
                                url: URL(string: "http://www.blockcerts.org/mockissuer/certificates/")!,
                                revocationURL: nil,
                                publicIssuerKeys: [
                                    KeyRotation(on: testDate, key: "mmShyF6mhf6LeQzPdEsmiCghhgMuEn9TNF")
                                ],
                                publicRevocationKeys: [
                                    KeyRotation(on: testDate, key: "mz7poFND7hVGRtPWjiZizcCnjf6wEDWjjT")
                                ],
                                introductionURL: URL(string: "http://www.blockcerts.org/mockissuer/intro/")!)
        
        let encoder = JSONEncoder()
        do {
            let output = try encoder.encode(issuerV1)
            
            // Since we tested the decoder above, we can trust it in this part of the test
            let decoder = JSONDecoder()
            let resultingIssuerV1 = try decoder.decode(IssuerV1.self, from: output)
            XCTAssertEqual(issuerV1, resultingIssuerV1)
        } catch {
            XCTFail("Exception thrown while encoding issuer v1.")
        }
    }
    
    func testV2Codable() {
        // Attempt decode
        let issuerFile = "issuer-v2"
        let testBundle = Bundle(for: type(of: self))
        guard let fileUrl = testBundle.url(forResource: issuerFile, withExtension: "json") ,
            let file = try? Data(contentsOf: fileUrl) else {
                return
        }
        
        let decoder = JSONDecoder()
        do {
            let issuer = try decoder.decode(IssuerV2.self, from: file)
            XCTAssertEqual(issuer.id, URL(string: "https://www.blockcerts.org/samples/2.0/issuer-testnet.json")!)
            XCTAssertEqual(issuer.url, URL(string: "https://www.issuer.org")!)
            XCTAssertEqual(issuer.name, "University of Learning")
            XCTAssertEqual(issuer.email, "contact@issuer.org")
            XCTAssertEqual(issuer.publicKeys.first?.key, "ecdsa-koblitz-pubkey:msBCHdwaQ7N2ypBYupkp6uNxtr9Pg76imj")
            XCTAssertEqual(issuer.issuingEstimateAuth, .signed) // test that signed is the default when it's missing
        } catch {
            XCTFail("Something went wrong \(error)")
        }
        
        // Attempt encode
        let issuer = IssuerV2(name: "Name",
                              email: "Email@address.com",
                              image: Data(),
                              id: URL(string: "https://issuer.com/blockcerts")!,
                              url: URL(string: "https://issuer.com")!,
                              revocationURL: URL(string: "https://issuer.com/revoke")!,
                              publicKeys: [KeyRotation(on: Date(timeIntervalSince1970: 0), key: "ISSUER_KEY")],
                              introductionMethod: .basic(introductionURL: URL(string: "https://issuer.com/intro")!),
                              analyticsURL: nil)
        let encoder = JSONEncoder()
        do {
            let data = try encoder.encode(issuer)
            let result = try decoder.decode(IssuerV2.self, from: data)
            XCTAssertEqual(issuer, result)
        } catch {
            XCTFail("Encoding (or decoding after the fact) failed: \(error)")
        }
    }
    
    func testV2AlphaCodable() {
        // Attempt decode
        let issuerFile = "issuer-v2a"
        let testBundle = Bundle(for: type(of: self))
        guard let fileUrl = testBundle.url(forResource: issuerFile, withExtension: "json") ,
            let file = try? Data(contentsOf: fileUrl) else {
                return
        }
        
        let decoder = JSONDecoder()
        do {
            let issuer = try decoder.decode(IssuerV2Alpha.self, from: file)
            XCTAssertEqual(issuer.id, URL(string: "https://www.blockcerts.org/samples/2.0/issuer-testnet.json")!)
            XCTAssertEqual(issuer.url, URL(string: "https://www.issuer.org")!)
            XCTAssertEqual(issuer.name, "University of Learning")
            XCTAssertEqual(issuer.email, "contact@issuer.org")
            XCTAssertEqual(issuer.publicKeys.first?.key, "ecdsa-koblitz-pubkey:mq1ooUTRfNapwyXUSdTVov4fJUYiQsZFWG")
        } catch {
            XCTFail("Something went wrong \(error)")
        }
        
        // Attempt encode
        let issuer = IssuerV2Alpha(name: "Name",
                                   email: "Email@address.com",
                                   image: Data(),
                                   id: URL(string: "https://issuer.com/blockcerts")!,
                                   url: URL(string: "https://issuer.com")!,
                                   revocationURL: URL(string: "https://issuer.com/revoke")!,
                                   publicKeys: [KeyRotation(on: Date(timeIntervalSince1970: 0), key: "ISSUER_KEY")],
                                   introductionMethod: .basic(introductionURL: URL(string: "https://issuer.com/intro")!),
                                   analyticsURL: nil)
        let encoder = JSONEncoder()
        do {
            let data = try encoder.encode(issuer)
            let result = try decoder.decode(IssuerV2Alpha.self, from: data)
            XCTAssertEqual(issuer, result)
        } catch {
            XCTFail("Encoding (or decoding after the fact) failed: \(error)")
        }
    }
    
    func testAlternateV2AlphaCodable() {
        // Attempt decode
        let issuerFile = "issuer-v2a-alternate"
        let testBundle = Bundle(for: type(of: self))
        guard let fileUrl = testBundle.url(forResource: issuerFile, withExtension: "json") ,
            let file = try? Data(contentsOf: fileUrl) else {
                return
        }
        
        let decoder = JSONDecoder()
        do {
            let issuer = try decoder.decode(IssuerV2Alpha.self, from: file)
            XCTAssertEqual(issuer.id, URL(string: "https://www.blockcerts.org/samples/2.0/issuer-testnet.json")!)
            XCTAssertEqual(issuer.url, URL(string: "https://www.issuer.org")!)
            XCTAssertEqual(issuer.name, "University of Learning")
            XCTAssertEqual(issuer.email, "contact@issuer.org")
            XCTAssertEqual(issuer.publicKeys.first?.key, "ecdsa-koblitz-pubkey:mq1ooUTRfNapwyXUSdTVov4fJUYiQsZFWG")
        } catch {
            XCTFail("Something went wrong \(error)")
        }
        
        
        // Attempt encode
        let issuer = IssuerV2Alpha(name: "Name",
                                   email: "Email@address.com",
                                   image: Data(),
                                   id: URL(string: "https://issuer.com/blockcerts")!,
                                   url: URL(string: "https://issuer.com")!,
                                   revocationURL: URL(string: "https://issuer.com/revoke")!,
                                   publicKeys: [KeyRotation(on: Date(timeIntervalSince1970: 0), key: "ISSUER_KEY")],
                                   introductionMethod: .basic(introductionURL: URL(string: "https://issuer.com/intro")!),
                                   analyticsURL: nil)
        let encoder = JSONEncoder()
        do {
            let data = try encoder.encode(issuer)
            let result = try decoder.decode(IssuerV2Alpha.self, from: data)
            XCTAssertEqual(issuer, result)
        } catch {
            XCTFail("Encoding (or decoding after the fact) failed: \(error)")
        }
    }
    
    func testEmbeddedIssuer() {
        //
        // This is showing how you can use the version-independent IssuerParser to parse Issuers when you don't know what specific version
        // of the Issuer format the object intends to use.
        //
        struct EmbeddedIssuer : Codable {
            let issuer : Issuer
            
            private enum CodingKeys : CodingKey {
                case issuer
            }
            
            init(with issuer: Issuer) {
                self.issuer = issuer
            }
            
            init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                issuer = try IssuerParser.decode(from: container, forKey: .issuer)
            }
            
            func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                try IssuerParser.encode(issuer, to: &container, forKey: .issuer)
            }
        }
        
        let issuerFile = "embedded-issuer-v2"
        let testBundle = Bundle(for: type(of: self))
        guard let fileUrl = testBundle.url(forResource: issuerFile, withExtension: "json") ,
            let file = try? Data(contentsOf: fileUrl) else {
                return
        }
        
        let decoder = JSONDecoder()
        do {
            let embedded = try decoder.decode(EmbeddedIssuer.self, from: file)
            XCTAssertEqual(embedded.issuer.version, .two)
        } catch {
            print("Failed: \(error)")
        }
        
        // Attempt encode
        let issuer = IssuerV2(name: "Name",
                              email: "Email@address.com",
                              image: Data(),
                              id: URL(string: "https://issuer.com/blockcerts")!,
                              url: URL(string: "https://issuer.com")!,
                              revocationURL: URL(string: "https://issuer.com/revoke")!,
                              publicKeys: [KeyRotation(on: Date(timeIntervalSince1970: 0), key: "ISSUER_KEY")],
                              introductionMethod: .basic(introductionURL: URL(string: "https://issuer.com/intro")!),
                              analyticsURL: nil)
        let embedded = EmbeddedIssuer(with: issuer)
        
        let encoder = JSONEncoder()
        do {
            let data = try encoder.encode(embedded)
            let result = try decoder.decode(EmbeddedIssuer.self, from: data)
            XCTAssert(result.issuer is IssuerV2)
            XCTAssertEqual(result.issuer as! IssuerV2, issuer)
        } catch {
            XCTFail("Encoding (or decoding after the fact) failed: \(error)")
        }
    }
    
    func testEmbeddedV1Issuer() {
        //
        // This is showing how you can use the version-independent IssuerParser to parse Issuers when you don't know what specific version
        // of the Issuer format the object intends to use.
        //
        struct EmbeddedIssuer : Codable {
            let issuer : Issuer
            
            private enum CodingKeys : CodingKey {
                case issuer
            }
            
            init(with issuer: Issuer) {
                self.issuer = issuer
            }
            
            init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                issuer = try IssuerParser.decode(from: container, forKey: .issuer)
            }
            
            func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                try IssuerParser.encode(issuer, to: &container, forKey: .issuer)
            }
        }
        
        let issuerFile = "embedded-issuer-v1"
        let testBundle = Bundle(for: type(of: self))
        guard let fileUrl = testBundle.url(forResource: issuerFile, withExtension: "json") ,
            let file = try? Data(contentsOf: fileUrl) else {
                return
        }
        
        let decoder = JSONDecoder()
        do {
            let embedded = try decoder.decode(EmbeddedIssuer.self, from: file)
            XCTAssertEqual(embedded.issuer.version, .one)
        } catch {
            print("Failed: \(error)")
        }
        
        // Attempt encode
        let issuer = IssuerV1(name: "Name",
                              email: "Email@address.com",
                              image: Data(),
                              id: URL(string: "https://issuer.com/blockcerts")!,
                              url: URL(string: "https://issuer.com")!,
                              revocationURL: URL(string: "https://issuer.com/revoke")!,
                              publicIssuerKeys: [KeyRotation(on: Date(timeIntervalSince1970: 0), key: "ISSUER_KEY")],
                              publicRevocationKeys: [KeyRotation(on: Date(timeIntervalSince1970: 0), key: "REVOCATION_KEY")],
                              introductionURL: URL(string: "https://issuer.com/introduce")!)
        let embedded = EmbeddedIssuer(with: issuer)
        
        let encoder = JSONEncoder()
        do {
            let data = try encoder.encode(embedded)
            let result = try decoder.decode(EmbeddedIssuer.self, from: data)
            XCTAssert(result.issuer is IssuerV1)
            XCTAssertEqual(result.issuer as! IssuerV1, issuer)
        } catch {
            XCTFail("Encoding (or decoding after the fact) failed: \(error)")
        }
    }
    
    func testEmbeddedPartialIssuer() {
        struct EmbeddedIssuer : Codable {
            let issuer : Issuer
            
            private enum CodingKeys : CodingKey {
                case issuer
            }
            
            init(with issuer: Issuer) {
                self.issuer = issuer
            }
            
            init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                issuer = try IssuerParser.decode(from: container, forKey: .issuer)
            }
            
            func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                try IssuerParser.encode(issuer, to: &container, forKey: .issuer)
            }
        }
        
        let issuerFile = "embedded-issuer-partial"
        let testBundle = Bundle(for: type(of: self))
        guard let fileUrl = testBundle.url(forResource: issuerFile, withExtension: "json") ,
            let file = try? Data(contentsOf: fileUrl) else {
                return
        }
        
        let decoder = JSONDecoder()
        do {
            let embedded = try decoder.decode(EmbeddedIssuer.self, from: file)
            XCTAssertEqual(embedded.issuer.version, .embedded)
        } catch {
            print("Failed: \(error)")
        }
        
        // Attempt encode
        let issuer = PartialIssuer(name: "University of Learning",
                                   email: "contact@issuer.org",
                                   image: Data(),
                                   id: URL(string: "https://issuer.com/blockcerts")!,
                                   url: URL(string: "https://issuer.com")!,
                                   revocationListURL: nil)
        let embedded = EmbeddedIssuer(with: issuer)
        
        let encoder = JSONEncoder()
        do {
            let data = try encoder.encode(embedded)
            let result = try decoder.decode(EmbeddedIssuer.self, from: data)
            XCTAssert(result.issuer is PartialIssuer)
            XCTAssertEqual(result.issuer as! PartialIssuer, issuer)
        } catch {
            XCTFail("Encoding (or decoding after the fact) failed: \(error)")
        }
    }
    
    func testEmbeddedOptionalIssuer() {
        //
        // This is showing how you can use the version-independent IssuerParser to parse Issuers when you don't know what specific version
        // of the Issuer format the object intends to use.
        //
        struct EmbeddedIssuer : Codable {
            let issuer : Issuer?
            
            private enum CodingKeys : CodingKey {
                case issuer
            }
            
            init(with issuer: Issuer?) {
                self.issuer = issuer
            }
            
            init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                issuer = try IssuerParser.decodeIfPresent(from: container, forKey: .issuer)
            }
            
            func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                try IssuerParser.encodeIfPresent(issuer, to: &container, forKey: .issuer)
            }
        }
        
        let issuerFile = "embedded-optional-issuer"
        let testBundle = Bundle(for: type(of: self))
        guard let fileUrl = testBundle.url(forResource: issuerFile, withExtension: "json") ,
            let file = try? Data(contentsOf: fileUrl) else {
                return
        }
        
        let decoder = JSONDecoder()
        do {
            let embedded = try decoder.decode(EmbeddedIssuer.self, from: file)
            XCTAssertNil(embedded.issuer)
        } catch {
            print("Failed: \(error)")
        }
        
        // Attempt encode
        let embedded = EmbeddedIssuer(with: nil)
        
        let encoder = JSONEncoder()
        do {
            let data = try encoder.encode(embedded)
            let result = try decoder.decode(EmbeddedIssuer.self, from: data)
            XCTAssertNil(result.issuer)
        } catch {
            XCTFail("Encoding (or decoding after the fact) failed: \(error)")
        }
    }
    
    func testIssuerIssuingEstimateExtension() {
        // Attempt decode
        let issuerFile = "issuer-v2-with-issuing-estimates"
        let testBundle = Bundle(for: type(of: self))
        guard let fileUrl = testBundle.url(forResource: issuerFile, withExtension: "json") ,
            let file = try? Data(contentsOf: fileUrl) else {
                return
        }
        
        let decoder = JSONDecoder()
        do {
            let issuer = try decoder.decode(IssuerV2.self, from: file)
            XCTAssertEqual(issuer.name, "University of Learning")
            XCTAssertEqual(issuer.issuingEstimateURL, URL(string: "https://issuer.org/estimate/url")!)
            XCTAssertEqual(issuer.issuingEstimateAuth, .unsigned)
        } catch {
            XCTFail("Something went wrong \(error)")
        }
        
        // Attempt encode
        let issuer = IssuerV2(name: "Name",
                              email: "Email@address.com",
                              image: Data(),
                              id: URL(string: "https://issuer.com/blockcerts")!,
                              url: URL(string: "https://issuer.com")!,
                              revocationURL: URL(string: "https://issuer.com/revoke")!,
                              publicKeys: [KeyRotation(on: Date(timeIntervalSince1970: 0), key: "ISSUER_KEY")],
                              introductionMethod: .basic(introductionURL: URL(string: "https://issuer.com/intro")!),
                              analyticsURL: nil,
                              issuingEstimateURL: URL(string: "https://issuer.org/estimate/url")!,
                              issuingEstimateAuth: .unsigned)
        let encoder = JSONEncoder()
        do {
            let data = try encoder.encode(issuer)
            let result = try decoder.decode(IssuerV2.self, from: data)
            XCTAssertEqual(issuer, result)
        } catch {
            XCTFail("Encoding (or decoding after the fact) failed: \(error)")
        }
    }
    
    // MARK: - IssuerParser decoding
    func testV2IssuerParser() {
        // Attempt decode
        let issuerFile = "issuer-v2"
        let testBundle = Bundle(for: type(of: self))
        guard let fileUrl = testBundle.url(forResource: issuerFile, withExtension: "json") ,
            let file = try? Data(contentsOf: fileUrl) else {
                return
        }
        
        let issuer = IssuerParser.decode(data: file)

        XCTAssertNotNil(issuer)
        if let v2Issuer = issuer as? IssuerV2 {
            XCTAssertEqual(v2Issuer.id, URL(string: "https://www.blockcerts.org/samples/2.0/issuer-testnet.json")!)
            XCTAssertEqual(v2Issuer.url, URL(string: "https://www.issuer.org")!)
            XCTAssertEqual(v2Issuer.name, "University of Learning")
            XCTAssertEqual(v2Issuer.email, "contact@issuer.org")
            XCTAssertEqual(v2Issuer.publicKeys.first?.key, "ecdsa-koblitz-pubkey:msBCHdwaQ7N2ypBYupkp6uNxtr9Pg76imj")
            XCTAssertEqual(v2Issuer.issuingEstimateAuth, .signed) // test that signed is the default when it's missing
        } else {
            XCTFail("Parsed an issuer, but it wasn't v2")
        }
    }
    
    func testV1IssuerParser() {
        // Attempt decode
        let issuerV1File = "issuer-v1"
        let testBundle = Bundle(for: type(of: self))
        guard let fileUrl = testBundle.url(forResource: issuerV1File, withExtension: "json") ,
            let file = try? Data(contentsOf: fileUrl) else {
                return
        }
        
        let issuer = IssuerParser.decode(data: file)
        XCTAssertNotNil(issuer)
        if let issuerV1 = issuer as? IssuerV1 {
            XCTAssertEqual(issuerV1.id, URL(string: "http://www.blockcerts.org/mockissuer/issuer/got-issuer.json")!)
            XCTAssertEqual(issuerV1.url, URL(string: "http://www.blockcerts.org/mockissuer/certificates/")!)
            XCTAssertEqual(issuerV1.name, "Game of thrones issuer on testnet")
            XCTAssertEqual(issuerV1.email, "org@org.org")
            XCTAssertEqual(issuerV1.issuerKeys.first?.key, "mmShyF6mhf6LeQzPdEsmiCghhgMuEn9TNF")
            XCTAssertEqual(issuerV1.revocationKeys.first?.key, "mz7poFND7hVGRtPWjiZizcCnjf6wEDWjjT")
        } else {
            XCTFail("Parsed an issuer, but it wasn't v1")
        }
        
    }
}
