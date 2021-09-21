from tensor2tensor.utils import cloud_mlengine as cloud
import subprocess

def get_default_zone():
    get_zone_sh = "gcloud config get-value compute/zone"
    return cloud.shell_output(get_zone_sh).strip()

if __name__ == '__main__':
    print("Deleting instance")
    zone = get_default_zone()
    cmd = "gcloud compute instances delete $(hostname) --quiet --zone={zone}".format(zone=zone)

    cmd = cmd.split()

    print(cmd)
    # subprocess.run(cmd)


    