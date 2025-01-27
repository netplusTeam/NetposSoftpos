.class public final Lcom/woleapp/netpos/contactless/model/ModalData;
.super Ljava/lang/Object;
.source "ModalData.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\r\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u0011\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001J\u0013\u0010\u0014\u001a\u00020\u00032\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0013H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001J\u0019\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u0013H\u00d6\u0001R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/model/ModalData;",
        "Landroid/os/Parcelable;",
        "status",
        "",
        "amount",
        "",
        "(ZD)V",
        "getAmount",
        "()D",
        "setAmount",
        "(D)V",
        "getStatus",
        "()Z",
        "setStatus",
        "(Z)V",
        "component1",
        "component2",
        "copy",
        "describeContents",
        "",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
        "app_fcmbeasypayDebug"
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
            "Lcom/woleapp/netpos/contactless/model/ModalData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private amount:D

.field private status:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/woleapp/netpos/contactless/model/ModalData$Creator;

    invoke-direct {v0}, Lcom/woleapp/netpos/contactless/model/ModalData$Creator;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lcom/woleapp/netpos/contactless/model/ModalData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ZD)V
    .locals 0
    .param p1, "status"    # Z
    .param p2, "amount"    # D

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-boolean p1, p0, Lcom/woleapp/netpos/contactless/model/ModalData;->status:Z

    .line 9
    iput-wide p2, p0, Lcom/woleapp/netpos/contactless/model/ModalData;->amount:D

    .line 7
    return-void
.end method

.method public static synthetic copy$default(Lcom/woleapp/netpos/contactless/model/ModalData;ZDILjava/lang/Object;)Lcom/woleapp/netpos/contactless/model/ModalData;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-boolean p1, p0, Lcom/woleapp/netpos/contactless/model/ModalData;->status:Z

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    iget-wide p2, p0, Lcom/woleapp/netpos/contactless/model/ModalData;->amount:D

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/woleapp/netpos/contactless/model/ModalData;->copy(ZD)Lcom/woleapp/netpos/contactless/model/ModalData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/woleapp/netpos/contactless/model/ModalData;->status:Z

    return v0
.end method

.method public final component2()D
    .locals 2

    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/model/ModalData;->amount:D

    return-wide v0
.end method

.method public final copy(ZD)Lcom/woleapp/netpos/contactless/model/ModalData;
    .locals 1

    new-instance v0, Lcom/woleapp/netpos/contactless/model/ModalData;

    invoke-direct {v0, p1, p2, p3}, Lcom/woleapp/netpos/contactless/model/ModalData;-><init>(ZD)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/woleapp/netpos/contactless/model/ModalData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/woleapp/netpos/contactless/model/ModalData;

    iget-boolean v3, p0, Lcom/woleapp/netpos/contactless/model/ModalData;->status:Z

    iget-boolean v4, v1, Lcom/woleapp/netpos/contactless/model/ModalData;->status:Z

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/woleapp/netpos/contactless/model/ModalData;->amount:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget-wide v4, v1, Lcom/woleapp/netpos/contactless/model/ModalData;->amount:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getAmount()D
    .locals 2

    .line 9
    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/model/ModalData;->amount:D

    return-wide v0
.end method

.method public final getStatus()Z
    .locals 1

    .line 8
    iget-boolean v0, p0, Lcom/woleapp/netpos/contactless/model/ModalData;->status:Z

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-boolean v0, p0, Lcom/woleapp/netpos/contactless/model/ModalData;->status:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/woleapp/netpos/contactless/model/ModalData;->amount:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public final setAmount(D)V
    .locals 0
    .param p1, "<set-?>"    # D

    .line 9
    iput-wide p1, p0, Lcom/woleapp/netpos/contactless/model/ModalData;->amount:D

    return-void
.end method

.method public final setStatus(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 8
    iput-boolean p1, p0, Lcom/woleapp/netpos/contactless/model/ModalData;->status:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModalData(status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/woleapp/netpos/contactless/model/ModalData;->status:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/woleapp/netpos/contactless/model/ModalData;->amount:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/woleapp/netpos/contactless/model/ModalData;->status:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/woleapp/netpos/contactless/model/ModalData;->amount:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method
