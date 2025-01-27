.class public final Lcom/woleapp/netpos/contactless/model/ModalData$Creator;
.super Ljava/lang/Object;
.source "ModalData.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woleapp/netpos/contactless/model/ModalData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/woleapp/netpos/contactless/model/ModalData;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/woleapp/netpos/contactless/model/ModalData;
    .locals 4

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/woleapp/netpos/contactless/model/ModalData;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/woleapp/netpos/contactless/model/ModalData;-><init>(ZD)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/woleapp/netpos/contactless/model/ModalData$Creator;->createFromParcel(Landroid/os/Parcel;)Lcom/woleapp/netpos/contactless/model/ModalData;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/woleapp/netpos/contactless/model/ModalData;
    .locals 1

    new-array v0, p1, [Lcom/woleapp/netpos/contactless/model/ModalData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/woleapp/netpos/contactless/model/ModalData$Creator;->newArray(I)[Lcom/woleapp/netpos/contactless/model/ModalData;

    move-result-object v0

    return-object v0
.end method
