.class public abstract Lcom/sleepycat/je/tree/Key$DumpType;
.super Ljava/lang/Object;
.source "Key.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/tree/Key;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DumpType"
.end annotation


# static fields
.field public static final BINARY:Lcom/sleepycat/je/tree/Key$DumpType;

.field public static final HEX:Lcom/sleepycat/je/tree/Key$DumpType;

.field public static final OBFUSCATE:Lcom/sleepycat/je/tree/Key$DumpType;

.field public static final TEXT:Lcom/sleepycat/je/tree/Key$DumpType;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Lcom/sleepycat/je/tree/Key$DumpType$1;

    const-string v1, "BINARY"

    invoke-direct {v0, v1}, Lcom/sleepycat/je/tree/Key$DumpType$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/tree/Key$DumpType;->BINARY:Lcom/sleepycat/je/tree/Key$DumpType;

    .line 49
    new-instance v0, Lcom/sleepycat/je/tree/Key$DumpType$2;

    const-string v1, "HEX"

    invoke-direct {v0, v1}, Lcom/sleepycat/je/tree/Key$DumpType$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/tree/Key$DumpType;->HEX:Lcom/sleepycat/je/tree/Key$DumpType;

    .line 59
    new-instance v0, Lcom/sleepycat/je/tree/Key$DumpType$3;

    const-string v1, "TEXT"

    invoke-direct {v0, v1}, Lcom/sleepycat/je/tree/Key$DumpType$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/tree/Key$DumpType;->TEXT:Lcom/sleepycat/je/tree/Key$DumpType;

    .line 66
    new-instance v0, Lcom/sleepycat/je/tree/Key$DumpType$4;

    const-string v1, "OBFUSCATE"

    invoke-direct {v0, v1}, Lcom/sleepycat/je/tree/Key$DumpType$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/tree/Key$DumpType;->OBFUSCATE:Lcom/sleepycat/je/tree/Key$DumpType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/sleepycat/je/tree/Key$DumpType;->name:Ljava/lang/String;

    .line 38
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/sleepycat/je/tree/Key$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/sleepycat/je/tree/Key$1;

    .line 32
    invoke-direct {p0, p1}, Lcom/sleepycat/je/tree/Key$DumpType;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dumpByteArray([B)Ljava/lang/String;
    .locals 2
    .param p1, "b"    # [B

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p0, v0, p1}, Lcom/sleepycat/je/tree/Key$DumpType;->dumpByteArrayInternal(Ljava/lang/StringBuilder;[B)V

    goto :goto_0

    .line 80
    :cond_0
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method abstract dumpByteArrayInternal(Ljava/lang/StringBuilder;[B)V
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/sleepycat/je/tree/Key$DumpType;->name:Ljava/lang/String;

    return-object v0
.end method
