.class public final enum Lorg/jline/reader/impl/LineReaderImpl$CompletionType;
.super Ljava/lang/Enum;
.source "LineReaderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/reader/impl/LineReaderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "CompletionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jline/reader/impl/LineReaderImpl$CompletionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jline/reader/impl/LineReaderImpl$CompletionType;

.field public static final enum Complete:Lorg/jline/reader/impl/LineReaderImpl$CompletionType;

.field public static final enum Expand:Lorg/jline/reader/impl/LineReaderImpl$CompletionType;

.field public static final enum ExpandComplete:Lorg/jline/reader/impl/LineReaderImpl$CompletionType;

.field public static final enum List:Lorg/jline/reader/impl/LineReaderImpl$CompletionType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 4299
    new-instance v0, Lorg/jline/reader/impl/LineReaderImpl$CompletionType;

    const-string v1, "Expand"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jline/reader/impl/LineReaderImpl$CompletionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jline/reader/impl/LineReaderImpl$CompletionType;->Expand:Lorg/jline/reader/impl/LineReaderImpl$CompletionType;

    .line 4300
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$CompletionType;

    const-string v3, "ExpandComplete"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/jline/reader/impl/LineReaderImpl$CompletionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jline/reader/impl/LineReaderImpl$CompletionType;->ExpandComplete:Lorg/jline/reader/impl/LineReaderImpl$CompletionType;

    .line 4301
    new-instance v3, Lorg/jline/reader/impl/LineReaderImpl$CompletionType;

    const-string v5, "Complete"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/jline/reader/impl/LineReaderImpl$CompletionType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/jline/reader/impl/LineReaderImpl$CompletionType;->Complete:Lorg/jline/reader/impl/LineReaderImpl$CompletionType;

    .line 4302
    new-instance v5, Lorg/jline/reader/impl/LineReaderImpl$CompletionType;

    const-string v7, "List"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/jline/reader/impl/LineReaderImpl$CompletionType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/jline/reader/impl/LineReaderImpl$CompletionType;->List:Lorg/jline/reader/impl/LineReaderImpl$CompletionType;

    .line 4298
    const/4 v7, 0x4

    new-array v7, v7, [Lorg/jline/reader/impl/LineReaderImpl$CompletionType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lorg/jline/reader/impl/LineReaderImpl$CompletionType;->$VALUES:[Lorg/jline/reader/impl/LineReaderImpl$CompletionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4298
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jline/reader/impl/LineReaderImpl$CompletionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 4298
    const-class v0, Lorg/jline/reader/impl/LineReaderImpl$CompletionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jline/reader/impl/LineReaderImpl$CompletionType;

    return-object v0
.end method

.method public static values()[Lorg/jline/reader/impl/LineReaderImpl$CompletionType;
    .locals 1

    .line 4298
    sget-object v0, Lorg/jline/reader/impl/LineReaderImpl$CompletionType;->$VALUES:[Lorg/jline/reader/impl/LineReaderImpl$CompletionType;

    invoke-virtual {v0}, [Lorg/jline/reader/impl/LineReaderImpl$CompletionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jline/reader/impl/LineReaderImpl$CompletionType;

    return-object v0
.end method
