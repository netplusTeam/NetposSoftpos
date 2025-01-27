.class Lorg/jline/utils/WCWidth$Interval;
.super Ljava/lang/Object;
.source "WCWidth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/utils/WCWidth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Interval"
.end annotation


# instance fields
.field public final first:I

.field public final last:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "first"    # I
    .param p2, "last"    # I

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput p1, p0, Lorg/jline/utils/WCWidth$Interval;->first:I

    .line 136
    iput p2, p0, Lorg/jline/utils/WCWidth$Interval;->last:I

    .line 137
    return-void
.end method
