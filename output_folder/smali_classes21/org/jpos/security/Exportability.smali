.class public final enum Lorg/jpos/security/Exportability;
.super Ljava/lang/Enum;
.source "Exportability.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jpos/security/Exportability;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jpos/security/Exportability;

.field public static final enum ANY:Lorg/jpos/security/Exportability;

.field private static final MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Lorg/jpos/security/Exportability;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum NONE:Lorg/jpos/security/Exportability;

.field public static final enum TRUSTED:Lorg/jpos/security/Exportability;


# instance fields
.field private final code:C

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 38
    new-instance v0, Lorg/jpos/security/Exportability;

    const-string v1, "ANY"

    const/4 v2, 0x0

    const/16 v3, 0x45

    const-string v4, "Exportable only in a trusted key block"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jpos/security/Exportability;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v0, Lorg/jpos/security/Exportability;->ANY:Lorg/jpos/security/Exportability;

    .line 43
    new-instance v1, Lorg/jpos/security/Exportability;

    const-string v3, "NONE"

    const/4 v4, 0x1

    const/16 v5, 0x4e

    const-string v6, "No export permitted"

    invoke-direct {v1, v3, v4, v5, v6}, Lorg/jpos/security/Exportability;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v1, Lorg/jpos/security/Exportability;->NONE:Lorg/jpos/security/Exportability;

    .line 53
    new-instance v3, Lorg/jpos/security/Exportability;

    const-string v5, "TRUSTED"

    const/4 v6, 0x2

    const/16 v7, 0x53

    const-string v8, "Exportable only in a trusted key block if allowed"

    invoke-direct {v3, v5, v6, v7, v8}, Lorg/jpos/security/Exportability;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v3, Lorg/jpos/security/Exportability;->TRUSTED:Lorg/jpos/security/Exportability;

    .line 32
    const/4 v5, 0x3

    new-array v5, v5, [Lorg/jpos/security/Exportability;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lorg/jpos/security/Exportability;->$VALUES:[Lorg/jpos/security/Exportability;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jpos/security/Exportability;->MAP:Ljava/util/Map;

    .line 59
    invoke-static {}, Lorg/jpos/security/Exportability;->values()[Lorg/jpos/security/Exportability;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 60
    .local v3, "exp":Lorg/jpos/security/Exportability;
    sget-object v4, Lorg/jpos/security/Exportability;->MAP:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/jpos/security/Exportability;->getCode()C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .end local v3    # "exp":Lorg/jpos/security/Exportability;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ICLjava/lang/String;)V
    .locals 0
    .param p3, "code"    # C
    .param p4, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 67
    const-string p1, "The name of key exportability is required"

    invoke-static {p4, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    iput-char p3, p0, Lorg/jpos/security/Exportability;->code:C

    .line 69
    iput-object p4, p0, Lorg/jpos/security/Exportability;->name:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jpos/security/Exportability;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 32
    const-class v0, Lorg/jpos/security/Exportability;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jpos/security/Exportability;

    return-object v0
.end method

.method public static valueOfByCode(C)Lorg/jpos/security/Exportability;
    .locals 2
    .param p0, "code"    # C

    .line 104
    sget-object v0, Lorg/jpos/security/Exportability;->MAP:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/security/Exportability;

    return-object v0
.end method

.method public static values()[Lorg/jpos/security/Exportability;
    .locals 1

    .line 32
    sget-object v0, Lorg/jpos/security/Exportability;->$VALUES:[Lorg/jpos/security/Exportability;

    invoke-virtual {v0}, [Lorg/jpos/security/Exportability;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jpos/security/Exportability;

    return-object v0
.end method


# virtual methods
.method public getCode()C
    .locals 1

    .line 78
    iget-char v0, p0, Lorg/jpos/security/Exportability;->code:C

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/jpos/security/Exportability;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 92
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-char v1, p0, Lorg/jpos/security/Exportability;->code:C

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/jpos/security/Exportability;->name:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Exportability[code: %s, name: %s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
