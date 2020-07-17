// Copyright AudioKit. All Rights Reserved. Revision History at http://github.com/AudioKit/AudioKit/

public class AKAutoPannerAudioUnit: AKAudioUnitBase {

    let frequency = AUParameter(
        identifier: "frequency",
        name: "Frequency (Hz)",
        address: AKAutoPannerParameter.frequency.rawValue,
        range: 0.0...100.0,
        unit: .hertz,
        flags: .default
    )

    let depth = AUParameter(
        identifier: "depth",
        name: "Depth",
        address: AKAutoPannerParameter.depth.rawValue,
        range: 0.0...1.0,
        unit: .generic,
        flags: .default
    )

    public override func createDSP() -> AKDSPRef {
        return createAutoPannerDSP()
    }
}
