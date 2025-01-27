.class public Lorg/jline/terminal/impl/jna/win/Kernel32$FOCUS_EVENT_RECORD;
.super Lcom/sun/jna/Structure;
.source "Kernel32.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/terminal/impl/jna/win/Kernel32;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FOCUS_EVENT_RECORD"
.end annotation


# static fields
.field private static fieldOrder:[Ljava/lang/String;


# instance fields
.field public bSetFocus:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 545
    const-string v0, "bSetFocus"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jline/terminal/impl/jna/win/Kernel32$FOCUS_EVENT_RECORD;->fieldOrder:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 542
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

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

    .line 549
    sget-object v0, Lorg/jline/terminal/impl/jna/win/Kernel32$FOCUS_EVENT_RECORD;->fieldOrder:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
