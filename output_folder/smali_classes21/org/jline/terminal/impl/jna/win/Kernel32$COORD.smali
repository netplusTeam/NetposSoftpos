.class public Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;
.super Lcom/sun/jna/Structure;
.source "Kernel32.java"

# interfaces
.implements Lcom/sun/jna/Structure$ByValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/terminal/impl/jna/win/Kernel32;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "COORD"
.end annotation


# static fields
.field private static fieldOrder:[Ljava/lang/String;


# instance fields
.field public X:S

.field public Y:S


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 396
    const-string v0, "X"

    const-string v1, "Y"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;->fieldOrder:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 385
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 386
    return-void
.end method

.method public constructor <init>(SS)V
    .locals 0
    .param p1, "X"    # S
    .param p2, "Y"    # S

    .line 388
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 389
    iput-short p1, p0, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;->X:S

    .line 390
    iput-short p2, p0, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;->Y:S

    .line 391
    return-void
.end method


# virtual methods
.method protected getFieldOrder()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 400
    sget-object v0, Lorg/jline/terminal/impl/jna/win/Kernel32$COORD;->fieldOrder:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
