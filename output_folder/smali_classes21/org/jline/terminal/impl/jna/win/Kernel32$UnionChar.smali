.class public Lorg/jline/terminal/impl/jna/win/Kernel32$UnionChar;
.super Lcom/sun/jna/Union;
.source "Kernel32.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/terminal/impl/jna/win/Kernel32;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnionChar"
.end annotation


# instance fields
.field public AsciiChar:B

.field public UnicodeChar:C


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 597
    invoke-direct {p0}, Lcom/sun/jna/Union;-><init>()V

    .line 598
    return-void
.end method

.method public constructor <init>(B)V
    .locals 1
    .param p1, "c"    # B

    .line 605
    invoke-direct {p0}, Lcom/sun/jna/Union;-><init>()V

    .line 606
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lorg/jline/terminal/impl/jna/win/Kernel32$UnionChar;->setType(Ljava/lang/Class;)V

    .line 607
    iput-byte p1, p0, Lorg/jline/terminal/impl/jna/win/Kernel32$UnionChar;->AsciiChar:B

    .line 608
    return-void
.end method

.method public constructor <init>(C)V
    .locals 1
    .param p1, "c"    # C

    .line 600
    invoke-direct {p0}, Lcom/sun/jna/Union;-><init>()V

    .line 601
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lorg/jline/terminal/impl/jna/win/Kernel32$UnionChar;->setType(Ljava/lang/Class;)V

    .line 602
    iput-char p1, p0, Lorg/jline/terminal/impl/jna/win/Kernel32$UnionChar;->UnicodeChar:C

    .line 603
    return-void
.end method


# virtual methods
.method public set(B)V
    .locals 1
    .param p1, "c"    # B

    .line 616
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lorg/jline/terminal/impl/jna/win/Kernel32$UnionChar;->setType(Ljava/lang/Class;)V

    .line 617
    iput-byte p1, p0, Lorg/jline/terminal/impl/jna/win/Kernel32$UnionChar;->AsciiChar:B

    .line 618
    return-void
.end method

.method public set(C)V
    .locals 1
    .param p1, "c"    # C

    .line 611
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lorg/jline/terminal/impl/jna/win/Kernel32$UnionChar;->setType(Ljava/lang/Class;)V

    .line 612
    iput-char p1, p0, Lorg/jline/terminal/impl/jna/win/Kernel32$UnionChar;->UnicodeChar:C

    .line 613
    return-void
.end method
