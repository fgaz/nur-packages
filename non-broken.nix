let filterSet =
      (f: s: builtins.listToAttrs
        (map
          (n: { name = n; value = builtins.getAttr n s; })
          (builtins.filter
            (n: f (builtins.getAttr n s))
            (builtins.attrNames s)
          )
        )
      );
in filterSet
     (p: (builtins.isAttrs p)
       && !(
             (builtins.hasAttr "meta" p)
             && (builtins.hasAttr "broken" p.meta)
             && (p.meta.broken)
           )
     )
     (import ./standalone.nix)

