.class public final Lcom/danbamitale/epmslib/entities/OriginalDataElements$Creator;
.super Ljava/lang/Object;
.source "TransactionRequestData.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danbamitale/epmslib/entities/OriginalDataElements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/danbamitale/epmslib/entities/OriginalDataElements;",
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
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/danbamitale/epmslib/entities/OriginalDataElements;
    .locals 14

    const-string/jumbo v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/danbamitale/epmslib/entities/OriginalDataElements;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/danbamitale/epmslib/entities/TransactionType;->valueOf(Ljava/lang/String;)Lcom/danbamitale/epmslib/entities/TransactionType;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/danbamitale/epmslib/utils/MessageReasonCode;->valueOf(Ljava/lang/String;)Lcom/danbamitale/epmslib/utils/MessageReasonCode;

    move-result-object v10

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/danbamitale/epmslib/entities/OriginalDataElements;-><init>(Lcom/danbamitale/epmslib/entities/TransactionType;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/danbamitale/epmslib/utils/MessageReasonCode;Ljava/lang/String;J)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/danbamitale/epmslib/entities/OriginalDataElements$Creator;->createFromParcel(Landroid/os/Parcel;)Lcom/danbamitale/epmslib/entities/OriginalDataElements;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/danbamitale/epmslib/entities/OriginalDataElements;
    .locals 1

    new-array v0, p1, [Lcom/danbamitale/epmslib/entities/OriginalDataElements;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/danbamitale/epmslib/entities/OriginalDataElements$Creator;->newArray(I)[Lcom/danbamitale/epmslib/entities/OriginalDataElements;

    move-result-object v0

    return-object v0
.end method
