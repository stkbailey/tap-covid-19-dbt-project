from dbt_immuta import StateManager

mgr = StateManager("dbt_immuta_config.yaml")

mgr.plan()
mgr.destroy()