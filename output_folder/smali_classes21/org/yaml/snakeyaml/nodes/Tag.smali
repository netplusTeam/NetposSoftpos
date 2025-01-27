.class public final Lorg/yaml/snakeyaml/nodes/Tag;
.super Ljava/lang/Object;
.source "Tag.java"


# static fields
.field public static final BINARY:Lorg/yaml/snakeyaml/nodes/Tag;

.field public static final BOOL:Lorg/yaml/snakeyaml/nodes/Tag;

.field protected static final COMPATIBILITY_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/yaml/snakeyaml/nodes/Tag;",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field public static final FLOAT:Lorg/yaml/snakeyaml/nodes/Tag;

.field public static final INT:Lorg/yaml/snakeyaml/nodes/Tag;

.field public static final MAP:Lorg/yaml/snakeyaml/nodes/Tag;

.field public static final MERGE:Lorg/yaml/snakeyaml/nodes/Tag;

.field public static final NULL:Lorg/yaml/snakeyaml/nodes/Tag;

.field public static final OMAP:Lorg/yaml/snakeyaml/nodes/Tag;

.field public static final PAIRS:Lorg/yaml/snakeyaml/nodes/Tag;

.field public static final PREFIX:Ljava/lang/String; = "tag:yaml.org,2002:"

.field public static final SEQ:Lorg/yaml/snakeyaml/nodes/Tag;

.field public static final SET:Lorg/yaml/snakeyaml/nodes/Tag;

.field public static final STR:Lorg/yaml/snakeyaml/nodes/Tag;

.field public static final TIMESTAMP:Lorg/yaml/snakeyaml/nodes/Tag;

.field public static final YAML:Lorg/yaml/snakeyaml/nodes/Tag;


# instance fields
.field private secondary:Z

.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 32
    new-instance v0, Lorg/yaml/snakeyaml/nodes/Tag;

    const-string v1, "tag:yaml.org,2002:yaml"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/nodes/Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/yaml/snakeyaml/nodes/Tag;->YAML:Lorg/yaml/snakeyaml/nodes/Tag;

    .line 33
    new-instance v0, Lorg/yaml/snakeyaml/nodes/Tag;

    const-string v1, "tag:yaml.org,2002:merge"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/nodes/Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/yaml/snakeyaml/nodes/Tag;->MERGE:Lorg/yaml/snakeyaml/nodes/Tag;

    .line 34
    new-instance v0, Lorg/yaml/snakeyaml/nodes/Tag;

    const-string v1, "tag:yaml.org,2002:set"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/nodes/Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/yaml/snakeyaml/nodes/Tag;->SET:Lorg/yaml/snakeyaml/nodes/Tag;

    .line 35
    new-instance v0, Lorg/yaml/snakeyaml/nodes/Tag;

    const-string v1, "tag:yaml.org,2002:pairs"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/nodes/Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/yaml/snakeyaml/nodes/Tag;->PAIRS:Lorg/yaml/snakeyaml/nodes/Tag;

    .line 36
    new-instance v0, Lorg/yaml/snakeyaml/nodes/Tag;

    const-string v1, "tag:yaml.org,2002:omap"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/nodes/Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/yaml/snakeyaml/nodes/Tag;->OMAP:Lorg/yaml/snakeyaml/nodes/Tag;

    .line 37
    new-instance v0, Lorg/yaml/snakeyaml/nodes/Tag;

    const-string v1, "tag:yaml.org,2002:binary"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/nodes/Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/yaml/snakeyaml/nodes/Tag;->BINARY:Lorg/yaml/snakeyaml/nodes/Tag;

    .line 38
    new-instance v0, Lorg/yaml/snakeyaml/nodes/Tag;

    const-string v1, "tag:yaml.org,2002:int"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/nodes/Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/yaml/snakeyaml/nodes/Tag;->INT:Lorg/yaml/snakeyaml/nodes/Tag;

    .line 39
    new-instance v1, Lorg/yaml/snakeyaml/nodes/Tag;

    const-string v2, "tag:yaml.org,2002:float"

    invoke-direct {v1, v2}, Lorg/yaml/snakeyaml/nodes/Tag;-><init>(Ljava/lang/String;)V

    sput-object v1, Lorg/yaml/snakeyaml/nodes/Tag;->FLOAT:Lorg/yaml/snakeyaml/nodes/Tag;

    .line 40
    new-instance v2, Lorg/yaml/snakeyaml/nodes/Tag;

    const-string v3, "tag:yaml.org,2002:timestamp"

    invoke-direct {v2, v3}, Lorg/yaml/snakeyaml/nodes/Tag;-><init>(Ljava/lang/String;)V

    sput-object v2, Lorg/yaml/snakeyaml/nodes/Tag;->TIMESTAMP:Lorg/yaml/snakeyaml/nodes/Tag;

    .line 41
    new-instance v2, Lorg/yaml/snakeyaml/nodes/Tag;

    const-string v3, "tag:yaml.org,2002:bool"

    invoke-direct {v2, v3}, Lorg/yaml/snakeyaml/nodes/Tag;-><init>(Ljava/lang/String;)V

    sput-object v2, Lorg/yaml/snakeyaml/nodes/Tag;->BOOL:Lorg/yaml/snakeyaml/nodes/Tag;

    .line 42
    new-instance v2, Lorg/yaml/snakeyaml/nodes/Tag;

    const-string v3, "tag:yaml.org,2002:null"

    invoke-direct {v2, v3}, Lorg/yaml/snakeyaml/nodes/Tag;-><init>(Ljava/lang/String;)V

    sput-object v2, Lorg/yaml/snakeyaml/nodes/Tag;->NULL:Lorg/yaml/snakeyaml/nodes/Tag;

    .line 43
    new-instance v2, Lorg/yaml/snakeyaml/nodes/Tag;

    const-string v3, "tag:yaml.org,2002:str"

    invoke-direct {v2, v3}, Lorg/yaml/snakeyaml/nodes/Tag;-><init>(Ljava/lang/String;)V

    sput-object v2, Lorg/yaml/snakeyaml/nodes/Tag;->STR:Lorg/yaml/snakeyaml/nodes/Tag;

    .line 44
    new-instance v2, Lorg/yaml/snakeyaml/nodes/Tag;

    const-string v3, "tag:yaml.org,2002:seq"

    invoke-direct {v2, v3}, Lorg/yaml/snakeyaml/nodes/Tag;-><init>(Ljava/lang/String;)V

    sput-object v2, Lorg/yaml/snakeyaml/nodes/Tag;->SEQ:Lorg/yaml/snakeyaml/nodes/Tag;

    .line 45
    new-instance v2, Lorg/yaml/snakeyaml/nodes/Tag;

    const-string v3, "tag:yaml.org,2002:map"

    invoke-direct {v2, v3}, Lorg/yaml/snakeyaml/nodes/Tag;-><init>(Ljava/lang/String;)V

    sput-object v2, Lorg/yaml/snakeyaml/nodes/Tag;->MAP:Lorg/yaml/snakeyaml/nodes/Tag;

    .line 48
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lorg/yaml/snakeyaml/nodes/Tag;->COMPATIBILITY_MAP:Ljava/util/Map;

    .line 49
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 50
    .local v3, "floatSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    const-class v4, Ljava/lang/Double;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    const-class v4, Ljava/lang/Float;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    const-class v4, Ljava/math/BigDecimal;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 56
    .local v1, "intSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    const-class v4, Ljava/lang/Integer;

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    const-class v4, Ljava/lang/Long;

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    const-class v4, Ljava/math/BigInteger;

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 62
    .local v0, "timestampSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    const-class v2, Ljava/util/Date;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    :try_start_0
    const-string v2, "java.sql.Date"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    const-string v2, "java.sql.Timestamp"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    goto :goto_0

    .line 68
    :catch_0
    move-exception v2

    .line 72
    :goto_0
    sget-object v2, Lorg/yaml/snakeyaml/nodes/Tag;->COMPATIBILITY_MAP:Ljava/util/Map;

    sget-object v4, Lorg/yaml/snakeyaml/nodes/Tag;->TIMESTAMP:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .end local v0    # "timestampSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    .end local v1    # "intSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    .end local v3    # "floatSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 90
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/nodes/Tag;->secondary:Z

    .line 91
    if-eqz p1, :cond_0

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tag:yaml.org,2002:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/yaml/snakeyaml/util/UriEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/yaml/snakeyaml/nodes/Tag;->value:Ljava/lang/String;

    .line 95
    return-void

    .line 92
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Class for tag must be provided."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/nodes/Tag;->secondary:Z

    .line 79
    if-eqz p1, :cond_2

    .line 81
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 86
    invoke-static {p1}, Lorg/yaml/snakeyaml/util/UriEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/yaml/snakeyaml/nodes/Tag;->value:Ljava/lang/String;

    .line 87
    const-string v0, "tag:yaml.org,2002:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/nodes/Tag;->secondary:Z

    .line 88
    return-void

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tag must not contain leading or trailing spaces."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tag must not be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Tag must be provided."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 2
    .param p1, "uri"    # Ljava/net/URI;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/nodes/Tag;->secondary:Z

    .line 102
    if-eqz p1, :cond_0

    .line 105
    invoke-virtual {p1}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/yaml/snakeyaml/nodes/Tag;->value:Ljava/lang/String;

    .line 106
    return-void

    .line 103
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "URI for tag must be provided."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 134
    instance-of v0, p1, Lorg/yaml/snakeyaml/nodes/Tag;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lorg/yaml/snakeyaml/nodes/Tag;->value:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/nodes/Tag;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 137
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 3

    .line 121
    iget-object v0, p0, Lorg/yaml/snakeyaml/nodes/Tag;->value:Ljava/lang/String;

    const-string v1, "tag:yaml.org,2002:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lorg/yaml/snakeyaml/nodes/Tag;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/yaml/snakeyaml/util/UriEncoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 122
    :cond_0
    new-instance v0, Lorg/yaml/snakeyaml/error/YAMLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/yaml/snakeyaml/nodes/Tag;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/yaml/snakeyaml/nodes/Tag;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/yaml/snakeyaml/nodes/Tag;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isCompatible(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 155
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lorg/yaml/snakeyaml/nodes/Tag;->COMPATIBILITY_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 156
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    if-eqz v0, :cond_0

    .line 157
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 159
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isSecondary()Z
    .locals 1

    .line 109
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/nodes/Tag;->secondary:Z

    return v0
.end method

.method public matches(Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 171
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    iget-object v0, p0, Lorg/yaml/snakeyaml/nodes/Tag;->value:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tag:yaml.org,2002:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public startsWith(Ljava/lang/String;)Z
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lorg/yaml/snakeyaml/nodes/Tag;->value:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lorg/yaml/snakeyaml/nodes/Tag;->value:Ljava/lang/String;

    return-object v0
.end method
