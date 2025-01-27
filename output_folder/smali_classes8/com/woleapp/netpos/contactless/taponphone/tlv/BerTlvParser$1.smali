.class Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser$1;
.super Ljava/lang/Object;
.source "BerTlvParser.java"

# interfaces
.implements Lcom/woleapp/netpos/contactless/taponphone/tlv/IBerTlvLogger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "aFormat"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "aFormat",
            "args"
        }
    .end annotation

    .line 241
    return-void
.end method

.method public isDebugEnabled()Z
    .locals 1

    .line 237
    const/4 v0, 0x0

    return v0
.end method
