.class public Lcom/alcineo/softpos/iaelonc;
.super Lcom/mitchellbosecke/pebble/extension/AbstractExtension;
.source "SourceFile"


# static fields
.field private static final aoleinc:Lcom/mitchellbosecke/pebble/extension/Filter;


# instance fields
.field private acileon:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/alcineo/utils/tlv/TlvTag;",
            "Ljava/util/List<",
            "Lcom/alcineo/softpos/ilencoa;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alcineo/softpos/iaelonc$acileon;

    invoke-direct {v0}, Lcom/alcineo/softpos/iaelonc$acileon;-><init>()V

    sput-object v0, Lcom/alcineo/softpos/iaelonc;->aoleinc:Lcom/mitchellbosecke/pebble/extension/Filter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mitchellbosecke/pebble/extension/AbstractExtension;-><init>()V

    return-void
.end method

.method public static synthetic acileon(Lcom/alcineo/softpos/iaelonc;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/alcineo/softpos/iaelonc;->acileon:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public acileon()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mitchellbosecke/pebble/extension/Filter;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/alcineo/softpos/iaelonc;->aoleinc:Lcom/mitchellbosecke/pebble/extension/Filter;

    const-string v2, "hex"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public acileon(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/alcineo/utils/tlv/TlvTag;",
            "Ljava/util/List<",
            "Lcom/alcineo/softpos/ilencoa;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alcineo/softpos/iaelonc;->acileon:Ljava/util/Map;

    return-void
.end method

.method public aoleinc()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mitchellbosecke/pebble/extension/Function;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcom/alcineo/softpos/iaelonc$aoleinc;

    invoke-direct {v1, p0}, Lcom/alcineo/softpos/iaelonc$aoleinc;-><init>(Lcom/alcineo/softpos/iaelonc;)V

    const-string v2, "getTagConfig"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
