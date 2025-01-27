.class final Lio/netty/util/AsciiString$DefaultCharEqualityComparator;
.super Ljava/lang/Object;
.source "AsciiString.java"

# interfaces
.implements Lio/netty/util/AsciiString$CharEqualityComparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/AsciiString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultCharEqualityComparator"
.end annotation


# static fields
.field static final INSTANCE:Lio/netty/util/AsciiString$DefaultCharEqualityComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1539
    new-instance v0, Lio/netty/util/AsciiString$DefaultCharEqualityComparator;

    invoke-direct {v0}, Lio/netty/util/AsciiString$DefaultCharEqualityComparator;-><init>()V

    sput-object v0, Lio/netty/util/AsciiString$DefaultCharEqualityComparator;->INSTANCE:Lio/netty/util/AsciiString$DefaultCharEqualityComparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(CC)Z
    .locals 1
    .param p1, "a"    # C
    .param p2, "b"    # C

    .line 1544
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
