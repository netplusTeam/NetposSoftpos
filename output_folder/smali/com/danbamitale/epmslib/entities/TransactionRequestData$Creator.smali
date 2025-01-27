.class public final Lcom/danbamitale/epmslib/entities/TransactionRequestData$Creator;
.super Ljava/lang/Object;
.source "TransactionRequestData.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danbamitale/epmslib/entities/TransactionRequestData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/danbamitale/epmslib/entities/TransactionRequestData;",
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
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/danbamitale/epmslib/entities/TransactionRequestData;
    .locals 14

    const-string/jumbo v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/danbamitale/epmslib/entities/TransactionRequestData;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/danbamitale/epmslib/entities/TransactionType;->valueOf(Ljava/lang/String;)Lcom/danbamitale/epmslib/entities/TransactionType;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/danbamitale/epmslib/utils/IsoAccountType;->valueOf(Ljava/lang/String;)Lcom/danbamitale/epmslib/utils/IsoAccountType;

    move-result-object v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v10, 0x0

    if-nez v1, :cond_0

    move-object v1, v10

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/danbamitale/epmslib/entities/AdditionalTransParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    move-object v11, v1

    check-cast v11, Lcom/danbamitale/epmslib/entities/AdditionalTransParams;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/danbamitale/epmslib/entities/OriginalDataElements;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    :goto_1
    move-object v13, v10

    check-cast v13, Lcom/danbamitale/epmslib/entities/OriginalDataElements;

    move-object v1, v0

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    invoke-direct/range {v1 .. v12}, Lcom/danbamitale/epmslib/entities/TransactionRequestData;-><init>(Lcom/danbamitale/epmslib/entities/TransactionType;JJLcom/danbamitale/epmslib/utils/IsoAccountType;Ljava/lang/String;Ljava/lang/String;Lcom/danbamitale/epmslib/entities/AdditionalTransParams;Ljava/lang/String;Lcom/danbamitale/epmslib/entities/OriginalDataElements;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/danbamitale/epmslib/entities/TransactionRequestData$Creator;->createFromParcel(Landroid/os/Parcel;)Lcom/danbamitale/epmslib/entities/TransactionRequestData;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/danbamitale/epmslib/entities/TransactionRequestData;
    .locals 1

    new-array v0, p1, [Lcom/danbamitale/epmslib/entities/TransactionRequestData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/danbamitale/epmslib/entities/TransactionRequestData$Creator;->newArray(I)[Lcom/danbamitale/epmslib/entities/TransactionRequestData;

    move-result-object v0

    return-object v0
.end method
