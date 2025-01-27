.class public abstract Lcom/sleepycat/je/tree/INKeyRep;
.super Lcom/sleepycat/je/tree/INArrayRep;
.source "INKeyRep.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/tree/INKeyRep$MaxKeySize;,
        Lcom/sleepycat/je/tree/INKeyRep$Default;,
        Lcom/sleepycat/je/tree/INKeyRep$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/je/tree/INArrayRep<",
        "Lcom/sleepycat/je/tree/INKeyRep;",
        "Lcom/sleepycat/je/tree/INKeyRep$Type;",
        "[B>;"
    }
.end annotation


# static fields
.field private static final EMPTY_KEYS_ARRAY:[[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    const/4 v0, 0x0

    new-array v0, v0, [[B

    sput-object v0, Lcom/sleepycat/je/tree/INKeyRep;->EMPTY_KEYS_ARRAY:[[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/sleepycat/je/tree/INArrayRep;-><init>()V

    .line 59
    return-void
.end method

.method static synthetic access$000()[[B
    .locals 1

    .line 50
    sget-object v0, Lcom/sleepycat/je/tree/INKeyRep;->EMPTY_KEYS_ARRAY:[[B

    return-object v0
.end method


# virtual methods
.method public abstract accountsForKeyByteMemUsage()Z
.end method

.method public abstract compareKeys([B[BIZLjava/util/Comparator;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[BIZ",
            "Ljava/util/Comparator<",
            "[B>;)I"
        }
    .end annotation
.end method

.method public abstract getData(I)[B
.end method

.method public abstract getFullKey([BIZ)[B
.end method

.method public abstract getKey(IZ)[B
.end method

.method public abstract length()I
.end method

.method public abstract set(I[B[BLcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INKeyRep;
.end method

.method public abstract setData(I[BLcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INKeyRep;
.end method

.method public abstract size(I)I
.end method
