.class public Lorg/jline/terminal/impl/jna/win/Kernel32$CHAR_INFO;
.super Lcom/sun/jna/Structure;
.source "Kernel32.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/terminal/impl/jna/win/Kernel32;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CHAR_INFO"
.end annotation


# static fields
.field private static fieldOrder:[Ljava/lang/String;


# instance fields
.field public Attributes:S

.field public uChar:Lorg/jline/terminal/impl/jna/win/Kernel32$UnionChar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 322
    const-string v0, "uChar"

    const-string v1, "Attributes"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jline/terminal/impl/jna/win/Kernel32$CHAR_INFO;->fieldOrder:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 302
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 303
    return-void
.end method

.method public constructor <init>(BS)V
    .locals 1
    .param p1, "c"    # B
    .param p2, "attr"    # S

    .line 310
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 311
    new-instance v0, Lorg/jline/terminal/impl/jna/win/Kernel32$UnionChar;

    invoke-direct {v0, p1}, Lorg/jline/terminal/impl/jna/win/Kernel32$UnionChar;-><init>(B)V

    iput-object v0, p0, Lorg/jline/terminal/impl/jna/win/Kernel32$CHAR_INFO;->uChar:Lorg/jline/terminal/impl/jna/win/Kernel32$UnionChar;

    .line 312
    iput-short p2, p0, Lorg/jline/terminal/impl/jna/win/Kernel32$CHAR_INFO;->Attributes:S

    .line 313
    return-void
.end method

.method public constructor <init>(CS)V
    .locals 1
    .param p1, "c"    # C
    .param p2, "attr"    # S

    .line 305
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 306
    new-instance v0, Lorg/jline/terminal/impl/jna/win/Kernel32$UnionChar;

    invoke-direct {v0, p1}, Lorg/jline/terminal/impl/jna/win/Kernel32$UnionChar;-><init>(C)V

    iput-object v0, p0, Lorg/jline/terminal/impl/jna/win/Kernel32$CHAR_INFO;->uChar:Lorg/jline/terminal/impl/jna/win/Kernel32$UnionChar;

    .line 307
    iput-short p2, p0, Lorg/jline/terminal/impl/jna/win/Kernel32$CHAR_INFO;->Attributes:S

    .line 308
    return-void
.end method

.method public static createArray(I)[Lorg/jline/terminal/impl/jna/win/Kernel32$CHAR_INFO;
    .locals 1
    .param p0, "size"    # I

    .line 319
    new-instance v0, Lorg/jline/terminal/impl/jna/win/Kernel32$CHAR_INFO;

    invoke-direct {v0}, Lorg/jline/terminal/impl/jna/win/Kernel32$CHAR_INFO;-><init>()V

    invoke-virtual {v0, p0}, Lorg/jline/terminal/impl/jna/win/Kernel32$CHAR_INFO;->toArray(I)[Lcom/sun/jna/Structure;

    move-result-object v0

    check-cast v0, [Lorg/jline/terminal/impl/jna/win/Kernel32$CHAR_INFO;

    return-object v0
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

    .line 326
    sget-object v0, Lorg/jline/terminal/impl/jna/win/Kernel32$CHAR_INFO;->fieldOrder:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
