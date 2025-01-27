.class public final Lcom/danbamitale/epmslib/entities/HostConfig$Creator;
.super Ljava/lang/Object;
.source "HostConfig.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danbamitale/epmslib/entities/HostConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/danbamitale/epmslib/entities/HostConfig;",
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
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/danbamitale/epmslib/entities/HostConfig;
    .locals 5

    const-string/jumbo v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/danbamitale/epmslib/entities/HostConfig;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/danbamitale/epmslib/entities/ConnectionData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danbamitale/epmslib/entities/ConnectionData;

    sget-object v3, Lcom/danbamitale/epmslib/entities/KeyHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danbamitale/epmslib/entities/KeyHolder;

    sget-object v4, Lcom/danbamitale/epmslib/entities/ConfigData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/danbamitale/epmslib/entities/ConfigData;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/danbamitale/epmslib/entities/HostConfig;-><init>(Ljava/lang/String;Lcom/danbamitale/epmslib/entities/ConnectionData;Lcom/danbamitale/epmslib/entities/KeyHolder;Lcom/danbamitale/epmslib/entities/ConfigData;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/danbamitale/epmslib/entities/HostConfig$Creator;->createFromParcel(Landroid/os/Parcel;)Lcom/danbamitale/epmslib/entities/HostConfig;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/danbamitale/epmslib/entities/HostConfig;
    .locals 1

    new-array v0, p1, [Lcom/danbamitale/epmslib/entities/HostConfig;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/danbamitale/epmslib/entities/HostConfig$Creator;->newArray(I)[Lcom/danbamitale/epmslib/entities/HostConfig;

    move-result-object v0

    return-object v0
.end method
