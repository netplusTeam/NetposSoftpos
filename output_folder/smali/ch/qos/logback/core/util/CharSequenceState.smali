.class Lch/qos/logback/core/util/CharSequenceState;
.super Ljava/lang/Object;
.source "CharSequenceState.java"


# instance fields
.field final c:C

.field occurrences:I


# direct methods
.method public constructor <init>(C)V
    .locals 1
    .param p1, "c"    # C

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-char p1, p0, Lch/qos/logback/core/util/CharSequenceState;->c:C

    .line 26
    const/4 v0, 0x1

    iput v0, p0, Lch/qos/logback/core/util/CharSequenceState;->occurrences:I

    .line 27
    return-void
.end method


# virtual methods
.method incrementOccurrences()V
    .locals 1

    .line 30
    iget v0, p0, Lch/qos/logback/core/util/CharSequenceState;->occurrences:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lch/qos/logback/core/util/CharSequenceState;->occurrences:I

    .line 31
    return-void
.end method
