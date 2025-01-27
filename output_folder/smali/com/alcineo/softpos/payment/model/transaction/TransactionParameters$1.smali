.class public Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;",
        ">;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native createFromParcel(Landroid/os/Parcel;)Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;
.end method

.method public bridge native synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.end method

.method public native newArray(I)[Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;
.end method

.method public bridge native synthetic newArray(I)[Ljava/lang/Object;
.end method
