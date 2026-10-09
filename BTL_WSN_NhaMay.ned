package inet.tutorials.wireless;
import inet.node.inet.WirelessHost;
import inet.physicallayer.wireless.common.medium.DimensionalRadioMedium;
import inet.physicallayer.wireless.noise.NoiseSource;
import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.visualizer.contract.IIntegratedVisualizer;

network BTL_WSN_NhaMay
{
    parameters:
        @display("bgb=700,500");

    submodules:

        visualizer: <default(firstAvailableOrEmpty("IntegratedCanvasVisualizer"))>
                    like IIntegratedVisualizer {
            @display("p=620,80");
        }

        configurator: Ipv4NetworkConfigurator {
            @display("p=620,160");
        }

        radioMedium: DimensionalRadioMedium {
            @display("p=620,240");
        }

        sensor1: WirelessHost {
            @display("p=100,150");
        }

        sensor2: WirelessHost {
            @display("p=100,300");
        }

        sensor3: WirelessHost {
            @display("p=200,150");
        }

        sensor4: WirelessHost {
            @display("p=200,300");
        }

        sink: WirelessHost {
            @display("p=450,225");
        }

        noiseSource: NoiseSource {
            @display("p=150,225");
        }
}