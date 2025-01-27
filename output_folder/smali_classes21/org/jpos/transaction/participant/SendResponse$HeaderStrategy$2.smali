.class final enum Lorg/jpos/transaction/participant/SendResponse$HeaderStrategy$2;
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

    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jpos/transaction/participant/SendResponse$HeaderStrategy;-><init>(Ljava/lang/String;ILorg/jpos/transaction/participant/SendResponse$1;)V

    return-void
.end method


# virtual methods
.method public handleHeader(Lorg/jpos/iso/ISOMsg;Lorg/jpos/iso/ISOMsg;)V
    .locals 0
    .param p1, "m"    # Lorg/jpos/iso/ISOMsg;
    .param p2, "r"    # Lorg/jpos/iso/ISOMsg;

    .line 119
    return-void
.end method
