.class public final Lcom/danbamitale/epmslib/entities/KeyHolder;
.super Ljava/lang/Object;
.source "KeyHolder.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danbamitale/epmslib/entities/KeyHolder$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u0000 62\u00020\u0001:\u00016B7\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0008J\t\u0010%\u001a\u00020\u0003H\u00c6\u0003J\t\u0010&\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\'\u001a\u00020\u0003H\u00c6\u0003J\t\u0010(\u001a\u00020\u0003H\u00c6\u0003J\t\u0010)\u001a\u00020\u0003H\u00c6\u0003J;\u0010*\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003H\u00c6\u0001J\t\u0010+\u001a\u00020\u0010H\u00d6\u0001J\u0013\u0010,\u001a\u00020\u00162\u0008\u0010-\u001a\u0004\u0018\u00010.H\u00d6\u0003J\t\u0010/\u001a\u00020\u0010H\u00d6\u0001J\t\u00100\u001a\u00020\u0003H\u00d6\u0001J\u0019\u00101\u001a\u0002022\u0006\u00103\u001a\u0002042\u0006\u00105\u001a\u00020\u0010H\u00d6\u0001R\u0010\u0010\t\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0008\nR\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001e\u0010\u000f\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u0015\u001a\u00020\u00168F\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0017R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u000c\"\u0004\u0008\u0019\u0010\u000eR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u000c\"\u0004\u0008\u001b\u0010\u000eR\u001e\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001c\u001a\u00020\u001d@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\u000c\"\u0004\u0008\"\u0010\u000eR\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010\u000c\"\u0004\u0008$\u0010\u000e\u00a8\u00067"
    }
    d2 = {
        "Lcom/danbamitale/epmslib/entities/KeyHolder;",
        "Landroid/os/Parcelable;",
        "masterKey",
        "",
        "sessionKey",
        "pinKey",
        "track2Key",
        "bdk",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "baseKey",
        "baseKey$1",
        "getBdk",
        "()Ljava/lang/String;",
        "setBdk",
        "(Ljava/lang/String;)V",
        "id",
        "",
        "getId",
        "()I",
        "setId",
        "(I)V",
        "isValid",
        "",
        "()Z",
        "getMasterKey",
        "setMasterKey",
        "getPinKey",
        "setPinKey",
        "<set-?>",
        "Lcom/danbamitale/epmslib/entities/PosMode;",
        "posMode",
        "getPosMode",
        "()Lcom/danbamitale/epmslib/entities/PosMode;",
        "getSessionKey",
        "setSessionKey",
        "getTrack2Key",
        "setTrack2Key",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
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
        "Companion",
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
            "Lcom/danbamitale/epmslib/entities/KeyHolder;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/danbamitale/epmslib/entities/KeyHolder$Companion;

.field private static baseKey:Ljava/lang/String;


# instance fields
.field private baseKey$1:Ljava/lang/String;

.field private bdk:Ljava/lang/String;

.field private id:I

.field private masterKey:Ljava/lang/String;

.field private pinKey:Ljava/lang/String;

.field private posMode:Lcom/danbamitale/epmslib/entities/PosMode;

.field private sessionKey:Ljava/lang/String;

.field private track2Key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/danbamitale/epmslib/entities/KeyHolder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/danbamitale/epmslib/entities/KeyHolder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/danbamitale/epmslib/entities/KeyHolder;->Companion:Lcom/danbamitale/epmslib/entities/KeyHolder$Companion;

    new-instance v0, Lcom/danbamitale/epmslib/entities/KeyHolder$Creator;

    invoke-direct {v0}, Lcom/danbamitale/epmslib/entities/KeyHolder$Creator;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lcom/danbamitale/epmslib/entities/KeyHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 46
    const-string v0, "0101010101010101"

    sput-object v0, Lcom/danbamitale/epmslib/entities/KeyHolder;->baseKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/danbamitale/epmslib/entities/KeyHolder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "masterKey"    # Ljava/lang/String;
    .param p2, "sessionKey"    # Ljava/lang/String;
    .param p3, "pinKey"    # Ljava/lang/String;
    .param p4, "track2Key"    # Ljava/lang/String;
    .param p5, "bdk"    # Ljava/lang/String;

    const-string v0, "masterKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sessionKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "pinKey"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "track2Key"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bdk"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/danbamitale/epmslib/entities/KeyHolder;->masterKey:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/danbamitale/epmslib/entities/KeyHolder;->sessionKey:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/danbamitale/epmslib/entities/KeyHolder;->pinKey:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/danbamitale/epmslib/entities/KeyHolder;->track2Key:Ljava/lang/String;

    .line 27
    iput-object p5, p0, Lcom/danbamitale/epmslib/entities/KeyHolder;->bdk:Ljava/lang/String;

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lcom/danbamitale/epmslib/entities/KeyHolder;->id:I

    .line 36
    nop

    .line 37
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "initialized keyholder"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 38
    nop

    .line 40
    const-string v0, "DB99F003EB17F590E8DBCCA66CDD7E72"

    iput-object v0, p0, Lcom/danbamitale/epmslib/entities/KeyHolder;->baseKey$1:Ljava/lang/String;

    .line 41
    sget-object v0, Lcom/danbamitale/epmslib/entities/PosMode;->EPMS:Lcom/danbamitale/epmslib/entities/PosMode;

    iput-object v0, p0, Lcom/danbamitale/epmslib/entities/KeyHolder;->posMode:Lcom/danbamitale/epmslib/entities/PosMode;

    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 4

    .line 13
    and-int/lit8 p7, p6, 0x1

    const-string v0, ""

    if-eqz p7, :cond_0

    .line 23
    move-object p7, v0

    goto :goto_0

    .line 13
    :cond_0
    move-object p7, p1

    :goto_0
    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    .line 24
    move-object v1, v0

    goto :goto_1

    .line 13
    :cond_1
    move-object v1, p2

    :goto_1
    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    .line 25
    move-object v2, v0

    goto :goto_2

    .line 13
    :cond_2
    move-object v2, p3

    :goto_2
    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    .line 26
    move-object v3, v0

    goto :goto_3

    .line 13
    :cond_3
    move-object v3, p4

    :goto_3
    and-int/lit8 p1, p6, 0x10

    if-eqz p1, :cond_4

    .line 27
    move-object p6, v0

    goto :goto_4

    .line 13
    :cond_4
    move-object p6, p5

    :goto_4
    move-object p1, p0

    move-object p2, p7

    move-object p3, v1

    move-object p4, v2

    move-object p5, v3

    invoke-direct/range {p1 .. p6}, Lcom/danbamitale/epmslib/entities/KeyHolder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public static final synthetic access$getBaseKey$cp()Ljava/lang/String;
    .locals 1

    .line 11
    sget-object v0, Lcom/danbamitale/epmslib/entities/KeyHolder;->baseKey:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$setBaseKey$cp(Ljava/lang/String;)V
    .locals 0
    .param p0, "<set-?>"    # Ljava/lang/String;

    .line 11
    sput-object p0, Lcom/danbamitale/epmslib/entities/KeyHolder;->baseKey:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/danbamitale/epmslib/entities/KeyHolder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/danbamitale/epmslib/entities/KeyHolder;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/danbamitale/epmslib/entities/KeyHolder;->masterKey:Ljava/lang/String;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/danbamitale/epmslib/entities/KeyHolder;->sessionKey:Ljava/lang/String;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/danbamitale/epmslib/entities/KeyHolder;->pinKey:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/danbamitale/epmslib/entities/KeyHolder;->track2Key:Ljava/lang/String;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/danbamitale/epmslib/entities/KeyHolder;->bdk:Ljava/lang/String;

    :cond_4
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/danbamitale/epmslib/entities/KeyHolder;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/danbamitale/epmslib/entities/KeyHolder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/KeyHolder;->masterKey:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/KeyHolder;->sessionKey:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/KeyHolder;->pinKey:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/KeyHolder;->track2Key:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/KeyHolder;->bdk:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/danbamitale/epmslib/entities/KeyHolder;
    .locals 7

    const-string v0, "masterKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sessionKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "pinKey"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "track2Key"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bdk"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/danbamitale/epmslib/entities/KeyHolder;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/danbamitale/epmslib/entities/KeyHolder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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
    instance-of v1, p1, Lcom/danbamitale/epmslib/entities/KeyHolder;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/danbamitale/epmslib/entities/KeyHolder;

    iget-object v3, p0, Lcom/danbamitale/epmslib/entities/KeyHolder;->masterKey:Ljava/lang/String;

    iget-object v4, v1, Lcom/danbamitale/epmslib/entities/KeyHolder;->masterKey:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lcom/danbamitale/epmslib/entities/KeyHolder;->sessionKey:Ljava/lang/String;

    iget-object v4, v1, Lcom/danbamitale/epmslib/entities/KeyHolder;->sessionKey:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lcom/danbamitale/epmslib/entities/KeyHolder;->pinKey:Ljava/lang/String;

    iget-object v4, v1, Lcom/danbamitale/epmslib/entities/KeyHolder;->pinKey:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lcom/danbamitale/epmslib/entities/KeyHolder;->track2Key:Ljava/lang/String;

    iget-object v4, v1, Lcom/danbamitale/epmslib/entities/KeyHolder;->track2Key:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    :cond_5
    iget-object v3, p0, Lcom/danbamitale/epmslib/entities/KeyHolder;->bdk:Ljava/lang/String;

    iget-object v1, v1, Lcom/danbamitale/epmslib/entities/KeyHolder;->bdk:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getBdk()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/KeyHolder;->bdk:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/danbamitale/epmslib/entities/KeyHolder;->id:I

    return v0
.end method

.method public final getMasterKey()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/KeyHolder;->masterKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getPinKey()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/KeyHolder;->pinKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getPosMode()Lcom/danbamitale/epmslib/entities/PosMode;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/KeyHolder;->posMode:Lcom/danbamitale/epmslib/entities/PosMode;

    return-object v0
.end method

.method public final getSessionKey()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/KeyHolder;->sessionKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getTrack2Key()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/KeyHolder;->track2Key:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/KeyHolder;->masterKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/danbamitale/epmslib/entities/KeyHolder;->sessionKey:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/danbamitale/epmslib/entities/KeyHolder;->pinKey:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/danbamitale/epmslib/entities/KeyHolder;->track2Key:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/danbamitale/epmslib/entities/KeyHolder;->bdk:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public final isValid()Z
    .locals 1

    .line 34
    invoke-static {p0}, Lcom/danbamitale/epmslib/entities/KeyHolderKt;->getClearPinKey(Lcom/danbamitale/epmslib/entities/KeyHolder;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/KeyHolder;->pinKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/KeyHolder;->masterKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final setBdk(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lcom/danbamitale/epmslib/entities/KeyHolder;->bdk:Ljava/lang/String;

    return-void
.end method

.method public final setId(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 31
    iput p1, p0, Lcom/danbamitale/epmslib/entities/KeyHolder;->id:I

    return-void
.end method

.method public final setMasterKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lcom/danbamitale/epmslib/entities/KeyHolder;->masterKey:Ljava/lang/String;

    return-void
.end method

.method public final setPinKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lcom/danbamitale/epmslib/entities/KeyHolder;->pinKey:Ljava/lang/String;

    return-void
.end method

.method public final setSessionKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lcom/danbamitale/epmslib/entities/KeyHolder;->sessionKey:Ljava/lang/String;

    return-void
.end method

.method public final setTrack2Key(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/danbamitale/epmslib/entities/KeyHolder;->track2Key:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyHolder(masterKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/danbamitale/epmslib/entities/KeyHolder;->masterKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sessionKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/danbamitale/epmslib/entities/KeyHolder;->sessionKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pinKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/danbamitale/epmslib/entities/KeyHolder;->pinKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", track2Key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/danbamitale/epmslib/entities/KeyHolder;->track2Key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bdk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/danbamitale/epmslib/entities/KeyHolder;->bdk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/KeyHolder;->masterKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/KeyHolder;->sessionKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/KeyHolder;->pinKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/KeyHolder;->track2Key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/KeyHolder;->bdk:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
