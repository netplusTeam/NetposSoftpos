.class final enum Lorg/jpos/transaction/participant/SendResponse$HeaderStrategy$1;
.super Lorg/jpos/transaction/participant/SendResponse$HeaderStrategy;
.source "SendResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/transaction/participant/SendResponse$HeaderStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jpos/transaction/participant/SendResponse$HeaderStrategy;-><init>(Ljava/lang/String;ILorg/jpos/transaction/participant/SendResponse$1;)V

    return-void
.end method


# virtual methods
.method public handleHeader(Lorg/jpos/iso/ISOMsg;Lorg/jpos/iso/ISOMsg;)V
    .locals 1
    .param p1, "m"    # Lorg/jpos/iso/ISOMsg;
    .param p2, "r"    # Lorg/jpos/iso/ISOMsg;

    .line 114
    invoke-virtual {p1}, Lorg/jpos/iso/ISOMsg;->getHeader()[B

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jpos/iso/ISOMsg;->setHeader([B)V

    .line 115
    return-void
.end method
