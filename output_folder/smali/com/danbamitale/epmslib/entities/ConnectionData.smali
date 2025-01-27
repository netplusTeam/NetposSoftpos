.class public final Lcom/danbamitale/epmslib/entities/ConnectionData;
.super Ljava/lang/Object;
.source "ConnectionData.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u001a\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B-\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\tJ\t\u0010\u001a\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\u0005H\u00c6\u0003J1\u0010\u001e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0005H\u00c6\u0001J\t\u0010\u001f\u001a\u00020\u0005H\u00d6\u0001J\u0013\u0010 \u001a\u00020\u00072\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u00d6\u0003J\t\u0010#\u001a\u00020\u0005H\u00d6\u0001J\t\u0010$\u001a\u00020\u0003H\u00d6\u0001J\u0019\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020\u0005H\u00d6\u0001R\u001a\u0010\u0008\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001e\u0010\u000e\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u000b\"\u0004\u0008\u0010\u0010\rR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u000b\"\u0004\u0008\u0016\u0010\rR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019\u00a8\u0006*"
    }
    d2 = {
        "Lcom/danbamitale/epmslib/entities/ConnectionData;",
        "Landroid/os/Parcelable;",
        "ipAddress",
        "",
        "ipPort",
        "",
        "isSSL",
        "",
        "certFileResId",
        "(Ljava/lang/String;IZI)V",
        "getCertFileResId",
        "()I",
        "setCertFileResId",
        "(I)V",
        "id",
        "getId",
        "setId",
        "getIpAddress",
        "()Ljava/lang/String;",
        "setIpAddress",
        "(Ljava/lang/String;)V",
        "getIpPort",
        "setIpPort",
        "()Z",
        "setSSL",
        "(Z)V",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "describeContents",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
        "epmslib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/danbamitale/epmslib/entities/ConnectionData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private certFileResId:I

.field private id:I

.field private ipAddress:Ljava/lang/String;

.field private ipPort:I

.field private isSSL:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/danbamitale/epmslib/entities/ConnectionData$Creator;

    invoke-direct {v0}, Lcom/danbamitale/epmslib/entities/ConnectionData$Creator;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lcom/danbamitale/epmslib/entities/ConnectionData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/danbamitale/epmslib/entities/ConnectionData;-><init>(Ljava/lang/String;IZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZI)V
    .locals 1
    .param p1, "ipAddress"    # Ljava/lang/String;
    .param p2, "ipPort"    # I
    .param p3, "isSSL"    # Z
    .param p4, "certFileResId"    # I

    const-string v0, "ipAddress"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/danbamitale/epmslib/entities/ConnectionData;->ipAddress:Ljava/lang/String;

    .line 22
    iput p2, p0, Lcom/danbamitale/epmslib/entities/ConnectionData;->ipPort:I

    .line 23
    iput-boolean p3, p0, Lcom/danbamitale/epmslib/entities/ConnectionData;->isSSL:Z

    .line 24
    iput p4, p0, Lcom/danbamitale/epmslib/entities/ConnectionData;->certFileResId:I

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lcom/danbamitale/epmslib/entities/ConnectionData;->id:I

    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IZIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 13
    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 21
    sget-object p1, Lcom/danbamitale/epmslib/utils/Utility;->INSTANCE:Lcom/danbamitale/epmslib/utils/Utility;

    invoke-virtual {p1}, Lcom/danbamitale/epmslib/utils/Utility;->getPOS_VAS_NIBSS_DEFAULT_IP()Ljava/lang/String;

    move-result-object p1

    .line 13
    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 22
    sget-object p2, Lcom/danbamitale/epmslib/utils/Utility;->INSTANCE:Lcom/danbamitale/epmslib/utils/Utility;

    invoke-virtual {p2}, Lcom/danbamitale/epmslib/utils/Utility;->getPOS_VAS_NIBSS_DEFAULT_PORT()I

    move-result p2

    .line 13
    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 23
    const/4 p3, 0x1

    .line 13
    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 24
    sget p4, Lcom/danbamitale/epmslib/R$raw;->nibss_cert_live:I

    .line 13
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/danbamitale/epmslib/entities/ConnectionData;-><init>(Ljava/lang/String;IZI)V

    .line 28
    return-void
.end method

.method public static synthetic copy$default(Lcom/danbamitale/epmslib/entities/ConnectionData;Ljava/lang/String;IZIILjava/lang/Object;)Lcom/danbamitale/epmslib/entities/ConnectionData;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/danbamitale/epmslib/entities/ConnectionData;->ipAddress:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/danbamitale/epmslib/entities/ConnectionData;->ipPort:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-boolean p3, p0, Lcom/danbamitale/epmslib/entities/ConnectionData;->isSSL:Z

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lcom/danbamitale/epmslib/entities/ConnectionData;->certFileResId:I

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/danbamitale/epmslib/entities/ConnectionData;->copy(Ljava/lang/String;IZI)Lcom/danbamitale/epmslib/entities/ConnectionData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/ConnectionData;->ipAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/danbamitale/epmslib/entities/ConnectionData;->ipPort:I

    return v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/danbamitale/epmslib/entities/ConnectionData;->isSSL:Z

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/danbamitale/epmslib/entities/ConnectionData;->certFileResId:I

    return v0
.end method

.method public final copy(Ljava/lang/String;IZI)Lcom/danbamitale/epmslib/entities/ConnectionData;
    .locals 1

    const-string v0, "ipAddress"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/danbamitale/epmslib/entities/ConnectionData;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/danbamitale/epmslib/entities/ConnectionData;-><init>(Ljava/lang/String;IZI)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/danbamitale/epmslib/entities/ConnectionData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/danbamitale/epmslib/entities/ConnectionData;

    iget-object v3, p0, Lcom/danbamitale/epmslib/entities/ConnectionData;->ipAddress:Ljava/lang/String;

    iget-object v4, v1, Lcom/danbamitale/epmslib/entities/ConnectionData;->ipAddress:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget v3, p0, Lcom/danbamitale/epmslib/entities/ConnectionData;->ipPort:I

    iget v4, v1, Lcom/danbamitale/epmslib/entities/ConnectionData;->ipPort:I

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    iget-boolean v3, p0, Lcom/danbamitale/epmslib/entities/ConnectionData;->isSSL:Z

    iget-boolean v4, v1, Lcom/danbamitale/epmslib/entities/ConnectionData;->isSSL:Z

    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    iget v3, p0, Lcom/danbamitale/epmslib/entities/ConnectionData;->certFileResId:I

    iget v1, v1, Lcom/danbamitale/epmslib/entities/ConnectionData;->certFileResId:I

    if-eq v3, v1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getCertFileResId()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/danbamitale/epmslib/entities/ConnectionData;->certFileResId:I

    return v0
.end method

.method public final getId()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/danbamitale/epmslib/entities/ConnectionData;->id:I

    return v0
.end method

.method public final getIpAddress()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/ConnectionData;->ipAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final getIpPort()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/danbamitale/epmslib/entities/ConnectionData;->ipPort:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/ConnectionData;->ipAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/danbamitale/epmslib/entities/ConnectionData;->ipPort:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/danbamitale/epmslib/entities/ConnectionData;->isSSL:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/danbamitale/epmslib/entities/ConnectionData;->certFileResId:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public final isSSL()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lcom/danbamitale/epmslib/entities/ConnectionData;->isSSL:Z

    return v0
.end method

.method public final setCertFileResId(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 24
    iput p1, p0, Lcom/danbamitale/epmslib/entities/ConnectionData;->certFileResId:I

    return-void
.end method

.method public final setId(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 27
    iput p1, p0, Lcom/danbamitale/epmslib/entities/ConnectionData;->id:I

    return-void
.end method

.method public final setIpAddress(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lcom/danbamitale/epmslib/entities/ConnectionData;->ipAddress:Ljava/lang/String;

    return-void
.end method

.method public final setIpPort(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 22
    iput p1, p0, Lcom/danbamitale/epmslib/entities/ConnectionData;->ipPort:I

    return-void
.end method

.method public final setSSL(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 23
    iput-boolean p1, p0, Lcom/danbamitale/epmslib/entities/ConnectionData;->isSSL:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnectionData(ipAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/danbamitale/epmslib/entities/ConnectionData;->ipAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ipPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/danbamitale/epmslib/entities/ConnectionData;->ipPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isSSL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/danbamitale/epmslib/entities/ConnectionData;->isSSL:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", certFileResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/danbamitale/epmslib/entities/ConnectionData;->certFileResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string/jumbo v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/ConnectionData;->ipAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/danbamitale/epmslib/entities/ConnectionData;->ipPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/danbamitale/epmslib/entities/ConnectionData;->isSSL:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/danbamitale/epmslib/entities/ConnectionData;->certFileResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
