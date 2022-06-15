from get_instance_metadata import get_metadata


def gen_dict_extract(key, var):
    if hasattr(var, 'items'):
        for k, v in var.items():
            if k == key:
                yield v
            if isinstance(v, dict):
                for result in gen_dict_extract(key, v):
                    yield result
            elif isinstance(v, list):
                for d in v:
                    for result in gen_dict_extract(key, d):
                        yield result


def find_key(key):
    metadata = get_metadata()
    return list(gen_dict_extract(key, metadata))


if __name__ == '__main__':
    key = input("Which key would you like to search?\n")
    print(find_key(key))
