.class public final Lcom/danbamitale/epmslib/entities/HostConfig;
.super Ljava/lang/Object;
.source "HostConfig.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B*\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000b\u0010\u0006\u001a\u00070\u0007\u00a2\u0006\u0002\u0008\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0005H\u00c6\u0003J\u000e\u0010\u0018\u001a\u00070\u0007\u00a2\u0006\u0002\u0008\u0008H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\nH\u00c6\u0003J6\u0010\u001a\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\r\u0008\u0002\u0010\u0006\u001a\u00070\u0007\u00a2\u0006\u0002\u0008\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\nH\u00c6\u0001J\t\u0010\u001b\u001a\u00020\u001cH\u00d6\u0001J\u0013\u0010\u001d\u001a\u00020\u001e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u00d6\u0003J\t\u0010!\u001a\u00020\u001cH\u00d6\u0001J\t\u0010\"\u001a\u00020\u0003H\u00d6\u0001J\u0019\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020\u001cH\u00d6\u0001R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u001f\u0010\u0006\u001a\u00070\u0007\u00a2\u0006\u0002\u0008\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006("
    }
    d2 = {
        "Lcom/danbamitale/epmslib/entities/HostConfig;",
        "Landroid/os/Parcelable;",
        "terminalId",
        "",
        "connectionData",
        "Lcom/danbamitale/epmslib/entities/ConnectionData;",
        "keyHolder",
        "Lcom/danbamitale/epmslib/entities/KeyHolder;",
        "Lkotlinx/android/parcel/RawValue;",
        "configData",
        "Lcom/danbamitale/epmslib/entities/ConfigData;",
        "(Ljava/lang/String;Lcom/danbamitale/epmslib/entities/ConnectionData;Lcom/danbamitale/epmslib/entities/KeyHolder;Lcom/danbamitale/epmslib/entities/ConfigData;)V",
        "getConfigData",
        "()Lcom/danbamitale/epmslib/entities/ConfigData;",
        "getConnectionData",
        "()Lcom/danbamitale/epmslib/entities/ConnectionData;",
        "getKeyHolder",
        "()Lcom/danbamitale/epmslib/entities/KeyHolder;",
        "setKeyHolder",
        "(Lcom/danbamitale/epmslib/entities/KeyHolder;)V",
        "getTerminalId",
        "()Ljava/lang/String;",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "describeContents",
        "",
        "equals",
        "",
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
            "Lcom/danbamitale/epmslib/entities/HostConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final configData:Lcom/danbamitale/epmslib/entities/ConfigData;

.field private final connectionData:Lcom/danbamitale/epmslib/entities/ConnectionData;

.field private keyHolder:Lcom/danbamitale/epmslib/entities/KeyHolder;

.field private final terminalId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/danbamitale/epmslib/entities/HostConfig$Creator;

    invoke-direct {v0}, Lcom/danbamitale/epmslib/entities/HostConfig$Creator;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lcom/danbamitale/epmslib/entities/HostConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/danbamitale/epmslib/entities/ConnectionData;Lcom/danbamitale/epmslib/entities/KeyHolder;Lcom/danbamitale/epmslib/entities/ConfigData;)V
    .locals 1
    .param p1, "terminalId"    # Ljava/lang/String;
    .param p2, "connectionData"    # Lcom/danbamitale/epmslib/entities/ConnectionData;
    .param p3, "keyHolder"    # Lcom/danbamitale/epmslib/entities/KeyHolder;
    .param p4, "configData"    # Lcom/danbamitale/epmslib/entities/ConfigData;

    const-string/jumbo v0, "terminalId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectionData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyHolder"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configData"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/danbamitale/epmslib/entities/HostConfig;->terminalId:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/danbamitale/epmslib/entities/HostConfig;->connectionData:Lcom/danbamitale/epmslib/entities/ConnectionData;

    .line 11
    iput-object p3, p0, Lcom/danbamitale/epmslib/entities/HostConfig;->keyHolder:Lcom/danbamitale/epmslib/entities/KeyHolder;

    .line 12
    iput-object p4, p0, Lcom/danbamitale/epmslib/entities/HostConfig;->configData:Lcom/danbamitale/epmslib/entities/ConfigData;

    .line 8
    return-void
.end method

.method public static synthetic copy$default(Lcom/danbamitale/epmslib/entities/HostConfig;Ljava/lang/String;Lcom/danbamitale/epmslib/entities/ConnectionData;Lcom/danbamitale/epmslib/entities/KeyHolder;Lcom/danbamitale/epmslib/entities/ConfigData;ILjava/lang/Object;)Lcom/danbamitale/epmslib/entities/HostConfig;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/danbamitale/epmslib/entities/HostConfig;->terminalId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/danbamitale/epmslib/entities/HostConfig;->connectionData:Lcom/danbamitale/epmslib/entities/ConnectionData;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/danbamitale/epmslib/entities/HostConfig;->keyHolder:Lcom/danbamitale/epmslib/entities/KeyHolder;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/danbamitale/epmslib/entities/HostConfig;->configData:Lcom/danbamitale/epmslib/entities/ConfigData;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/danbamitale/epmslib/entities/HostConfig;->copy(Ljava/lang/String;Lcom/danbamitale/epmslib/entities/ConnectionData;Lcom/danbamitale/epmslib/entities/KeyHolder;Lcom/danbamitale/epmslib/entities/ConfigData;)Lcom/danbamitale/epmslib/entities/HostConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/HostConfig;->terminalId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lcom/danbamitale/epmslib/entities/ConnectionData;
    .locals 1

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/HostConfig;->connectionData:Lcom/danbamitale/epmslib/entities/ConnectionData;

    return-object v0
.end method

.method public final component3()Lcom/danbamitale/epmslib/entities/KeyHolder;
    .locals 1

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/HostConfig;->keyHolder:Lcom/danbamitale/epmslib/entities/KeyHolder;

    return-object v0
.end method

.method public final component4()Lcom/danbamitale/epmslib/entities/ConfigData;
    .locals 1

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/HostConfig;->configData:Lcom/danbamitale/epmslib/entities/ConfigData;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/danbamitale/epmslib/entities/ConnectionData;Lcom/danbamitale/epmslib/entities/KeyHolder;Lcom/danbamitale/epmslib/entities/ConfigData;)Lcom/danbamitale/epmslib/entities/HostConfig;
    .locals 1

    const-string/jumbo v0, "terminalId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectionData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyHolder"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configData"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/danbamitale/epmslib/entities/HostConfig;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/danbamitale/epmslib/entities/HostConfig;-><init>(Ljava/lang/String;Lcom/danbamitale/epmslib/entities/ConnectionData;Lcom/danbamitale/epmslib/entities/KeyHolder;Lcom/danbamitale/epmslib/entities/ConfigData;)V

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
    instance-of v1, p1, Lcom/danbamitale/epmslib/entities/HostConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/danbamitale/epmslib/entities/HostConfig;

    iget-object v3, p0, Lcom/danbamitale/epmslib/entities/HostConfig;->terminalId:Ljava/lang/String;

    iget-object v4, v1, Lcom/danbamitale/epmslib/entities/HostConfig;->terminalId:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lcom/danbamitale/epmslib/entities/HostConfig;->connectionData:Lcom/danbamitale/epmslib/entities/ConnectionData;

    iget-object v4, v1, Lcom/danbamitale/epmslib/entities/HostConfig;->connectionData:Lcom/danbamitale/epmslib/entities/ConnectionData;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lcom/danbamitale/epmslib/entities/HostConfig;->keyHolder:Lcom/danbamitale/epmslib/entities/KeyHolder;

    iget-object v4, v1, Lcom/danbamitale/epmslib/entities/HostConfig;->keyHolder:Lcom/danbamitale/epmslib/entities/KeyHolder;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lcom/danbamitale/epmslib/entities/HostConfig;->configData:Lcom/danbamitale/epmslib/entities/ConfigData;

    iget-object v1, v1, Lcom/danbamitale/epmslib/entities/HostConfig;->configData:Lcom/danbamitale/epmslib/entities/ConfigData;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getConfigData()Lcom/danbamitale/epmslib/entities/ConfigData;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/HostConfig;->configData:Lcom/danbamitale/epmslib/entities/ConfigData;

    return-object v0
.end method

.method public final getConnectionData()Lcom/danbamitale/epmslib/entities/ConnectionData;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/HostConfig;->connectionData:Lcom/danbamitale/epmslib/entities/ConnectionData;

    return-object v0
.end method

.method public final getKeyHolder()Lcom/danbamitale/epmslib/entities/KeyHolder;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/HostConfig;->keyHolder:Lcom/danbamitale/epmslib/entities/KeyHolder;

    return-object v0
.end method

.method public final getTerminalId()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/HostConfig;->terminalId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/HostConfig;->terminalId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/danbamitale/epmslib/entities/HostConfig;->connectionData:Lcom/danbamitale/epmslib/entities/ConnectionData;

    invoke-virtual {v2}, Lcom/danbamitale/epmslib/entities/ConnectionData;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/danbamitale/epmslib/entities/HostConfig;->keyHolder:Lcom/danbamitale/epmslib/entities/KeyHolder;

    invoke-virtual {v2}, Lcom/danbamitale/epmslib/entities/KeyHolder;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/danbamitale/epmslib/entities/HostConfig;->configData:Lcom/danbamitale/epmslib/entities/ConfigData;

    invoke-virtual {v2}, Lcom/danbamitale/epmslib/entities/ConfigData;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public final setKeyHolder(Lcom/danbamitale/epmslib/entities/KeyHolder;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/danbamitale/epmslib/entities/KeyHolder;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iput-object p1, p0, Lcom/danbamitale/epmslib/entities/HostConfig;->keyHolder:Lcom/danbamitale/epmslib/entities/KeyHolder;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HostConfig(terminalId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/danbamitale/epmslib/entities/HostConfig;->terminalId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", connectionData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/danbamitale/epmslib/entities/HostConfig;->connectionData:Lcom/danbamitale/epmslib/entities/ConnectionData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", keyHolder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/danbamitale/epmslib/entities/HostConfig;->keyHolder:Lcom/danbamitale/epmslib/entities/KeyHolder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", configData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/danbamitale/epmslib/entities/HostConfig;->configData:Lcom/danbamitale/epmslib/entities/ConfigData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/HostConfig;->terminalId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/HostConfig;->connectionData:Lcom/danbamitale/epmslib/entities/ConnectionData;

    invoke-virtual {v0, p1, p2}, Lcom/danbamitale/epmslib/entities/ConnectionData;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/HostConfig;->keyHolder:Lcom/danbamitale/epmslib/entities/KeyHolder;

    invoke-virtual {v0, p1, p2}, Lcom/danbamitale/epmslib/entities/KeyHolder;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/HostConfig;->configData:Lcom/danbamitale/epmslib/entities/ConfigData;

    invoke-virtual {v0, p1, p2}, Lcom/danbamitale/epmslib/entities/ConfigData;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
