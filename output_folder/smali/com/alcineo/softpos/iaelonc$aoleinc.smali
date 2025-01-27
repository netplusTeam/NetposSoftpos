.class public final Lcom/alcineo/softpos/iaelonc$aoleinc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mitchellbosecke/pebble/extension/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alcineo/softpos/iaelonc;->aoleinc()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private synthetic acileon:Lcom/alcineo/softpos/iaelonc;


# direct methods
.method public constructor <init>(Lcom/alcineo/softpos/iaelonc;)V
    .locals 0

    iput-object p1, p0, Lcom/alcineo/softpos/iaelonc$aoleinc;->acileon:Lcom/alcineo/softpos/iaelonc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acileon(Ljava/util/Map;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string/jumbo v0, "tag"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alcineo/utils/tlv/TlvTag;

    const-string v1, "currentKernelId"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    iget-object v1, p0, Lcom/alcineo/softpos/iaelonc$aoleinc;->acileon:Lcom/alcineo/softpos/iaelonc;

    invoke-static {v1}, Lcom/alcineo/softpos/iaelonc;->acileon(Lcom/alcineo/softpos/iaelonc;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v1, v0, p1}, Lcom/alcineo/softpos/ilencoa;->acileon(Ljava/util/Map;Lcom/alcineo/utils/tlv/TlvTag;Ljava/lang/Byte;)Lcom/alcineo/softpos/ilencoa;

    move-result-object p1

    return-object p1
.end method

.method public acileon()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "tag"

    const-string v1, "currentKernelId"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
