resource "yandex_compute_snapshot_schedule" "default" {
  name = "default"

  schedule_policy {
    expression = "30 * ? * *"
  }

  snapshot_count = 1

  snapshot_spec {
    description = "daily"
  }

  disk_ids = [
    yandex_compute_instance.vm-1.boot_disk[0].disk_id,
    yandex_compute_instance.vm-2.boot_disk[0].disk_id,
    yandex_compute_instance.vm-3.boot_disk[0].disk_id,
    yandex_compute_instance.vm-4.boot_disk[0].disk_id,
    yandex_compute_instance.vm-5.boot_disk[0].disk_id,
    yandex_compute_instance.vm-6.boot_disk[0].disk_id,
    yandex_compute_instance.vm-7.boot_disk[0].disk_id,
    ]   
}