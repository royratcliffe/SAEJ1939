# SAE J1939 Interfaces

SAE J1939 Interfaces is a CODESYS interface library for IEC 61131-3
applications. It provides reusable SAE J1939 types and function blocks for
joystick and engine-related control logic.

The project is stored as CODESYS project objects in `project/`, with generated
IEC Structured Text copies in `st/`.

## Contents

- `EngineOperatingState`: engine operating modes and assignment states.
- `GearRequested`: transmission gear and selector positions.
- `JoystickButtonPressedStatus`: joystick button states.
- `JoystickAxis`: joystick axis processing.
- `Joystick`: two-axis joystick processing and button state conversion.
- Joystick detent, lever and neutral-position status enumerations.
- `ERROR`: basic `NO_ERROR` and `TIME_OUT` values.

## Project layout

```text
SAEJ1939.xml       CODESYS PLCopen XML project export
project/           CODESYS object JSON files
st/               Generated IEC Structured Text source
.vscode/          Git helper scripts and VS Code configuration
```

The project is an interface library and uses qualified-access-only exports.
Edit the CODESYS objects as the source of truth, or use the included scripts
to extract and update Structured Text as described below.

## Working with Structured Text

The repository includes Python utilities for keeping CODESYS object JSON and
readable `.st` files synchronised.

Run commands from the repository root.

### Extract source

```powershell
python .vscode\extract_st.py
```

This writes the extracted source under `st/`. To inspect it without writing
files, use:

```powershell
python .vscode\extract_st.py --stdout
```

### Update project objects

Preview changes from `st/`:

```powershell
python .vscode\update_st.py --dry-run
```

Apply the changes:

```powershell
python .vscode\update_st.py
```

The update script validates matching section labels before modifying project
objects.

### Watch for changes

Automatically extract source when project objects change:

```powershell
python .vscode\watch_extract_st.py
```

### Dump CANopen SDO writes

Convert CODESYS CANopen remote-device `.object` files into
`sdoWrite(...)` Structured Text calls:

```powershell
python .vscode\dump_sdo_writes.py path\to\device.object
python .vscode\dump_sdo_writes.py --node-id file path\to\device.object
python .vscode\dump_sdo_writes.py --no-comments path\to\device.object
```

By default, the first argument is the placeholder `nodeId`. Use `--node-id file`
to read the configured Node-ID from the object file.

## Requirements

- CODESYS V3.5 or later for opening and building the project.
- Python 3.9 or later for the repository utilities.
- Git for version and release management.
- GitHub CLI (`gh`) for creating releases.

The Python utilities use only the Python standard library.

## Tests

Run the repository utility tests with:

```powershell
python -m unittest discover -s .vscode -v
```

## Licence

This project is licensed under the [MIT Licence](LICENSE).
