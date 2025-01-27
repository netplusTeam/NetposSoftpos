.class public Lch/qos/logback/core/pattern/FormatInfo;
.super Ljava/lang/Object;
.source "FormatInfo.java"


# instance fields
.field private leftPad:Z

.field private leftTruncate:Z

.field private max:I

.field private min:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/high16 v0, -0x80000000

    iput v0, p0, Lch/qos/logback/core/pattern/FormatInfo;->min:I

    .line 24
    const v0, 0x7fffffff

    iput v0, p0, Lch/qos/logback/core/pattern/FormatInfo;->max:I

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/qos/logback/core/pattern/FormatInfo;->leftPad:Z

    .line 26
    iput-boolean v0, p0, Lch/qos/logback/core/pattern/FormatInfo;->leftTruncate:Z

    .line 29
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "min"    # I
    .param p2, "max"    # I

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/high16 v0, -0x80000000

    iput v0, p0, Lch/qos/logback/core/pattern/FormatInfo;->min:I

    .line 24
    const v0, 0x7fffffff

    iput v0, p0, Lch/qos/logback/core/pattern/FormatInfo;->max:I

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/qos/logback/core/pattern/FormatInfo;->leftPad:Z

    .line 26
    iput-boolean v0, p0, Lch/qos/logback/core/pattern/FormatInfo;->leftTruncate:Z

    .line 32
    iput p1, p0, Lch/qos/logback/core/pattern/FormatInfo;->min:I

    .line 33
    iput p2, p0, Lch/qos/logback/core/pattern/FormatInfo;->max:I

    .line 34
    return-void
.end method

.method public constructor <init>(IIZZ)V
    .locals 1
    .param p1, "min"    # I
    .param p2, "max"    # I
    .param p3, "leftPad"    # Z
    .param p4, "leftTruncate"    # Z

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/high16 v0, -0x80000000

    iput v0, p0, Lch/qos/logback/core/pattern/FormatInfo;->min:I

    .line 24
    const v0, 0x7fffffff

    iput v0, p0, Lch/qos/logback/core/pattern/FormatInfo;->max:I

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/qos/logback/core/pattern/FormatInfo;->leftPad:Z

    .line 26
    iput-boolean v0, p0, Lch/qos/logback/core/pattern/FormatInfo;->leftTruncate:Z

    .line 37
    iput p1, p0, Lch/qos/logback/core/pattern/FormatInfo;->min:I

    .line 38
    iput p2, p0, Lch/qos/logback/core/pattern/FormatInfo;->max:I

    .line 39
    iput-boolean p3, p0, Lch/qos/logback/core/pattern/FormatInfo;->leftPad:Z

    .line 40
    iput-boolean p4, p0, Lch/qos/logback/core/pattern/FormatInfo;->leftTruncate:Z

    .line 41
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lch/qos/logback/core/pattern/FormatInfo;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 52
    if-eqz p0, :cond_6

    .line 56
    new-instance v0, Lch/qos/logback/core/pattern/FormatInfo;

    invoke-direct {v0}, Lch/qos/logback/core/pattern/FormatInfo;-><init>()V

    .line 58
    .local v0, "fi":Lch/qos/logback/core/pattern/FormatInfo;
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 59
    .local v1, "indexOfDot":I
    const/4 v2, 0x0

    .line 60
    .local v2, "minPart":Ljava/lang/String;
    const/4 v3, 0x0

    .line 61
    .local v3, "maxPart":Ljava/lang/String;
    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eq v1, v4, :cond_1

    .line 62
    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 63
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v4, v6, :cond_0

    .line 66
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 64
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Formatting string ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] should not end with \'.\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 69
    :cond_1
    move-object v2, p0

    .line 72
    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 73
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 74
    .local v4, "min":I
    if-ltz v4, :cond_2

    .line 75
    iput v4, v0, Lch/qos/logback/core/pattern/FormatInfo;->min:I

    goto :goto_1

    .line 77
    :cond_2
    neg-int v6, v4

    iput v6, v0, Lch/qos/logback/core/pattern/FormatInfo;->min:I

    .line 78
    iput-boolean v5, v0, Lch/qos/logback/core/pattern/FormatInfo;->leftPad:Z

    .line 82
    .end local v4    # "min":I
    :cond_3
    :goto_1
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    .line 83
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 84
    .local v4, "max":I
    if-ltz v4, :cond_4

    .line 85
    iput v4, v0, Lch/qos/logback/core/pattern/FormatInfo;->max:I

    goto :goto_2

    .line 87
    :cond_4
    neg-int v6, v4

    iput v6, v0, Lch/qos/logback/core/pattern/FormatInfo;->max:I

    .line 88
    iput-boolean v5, v0, Lch/qos/logback/core/pattern/FormatInfo;->leftTruncate:Z

    .line 92
    .end local v4    # "max":I
    :cond_5
    :goto_2
    return-object v0

    .line 53
    .end local v0    # "fi":Lch/qos/logback/core/pattern/FormatInfo;
    .end local v1    # "indexOfDot":I
    .end local v2    # "minPart":Ljava/lang/String;
    .end local v3    # "maxPart":Ljava/lang/String;
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 129
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 130
    return v0

    .line 132
    :cond_0
    instance-of v1, p1, Lch/qos/logback/core/pattern/FormatInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 133
    return v2

    .line 135
    :cond_1
    move-object v1, p1

    check-cast v1, Lch/qos/logback/core/pattern/FormatInfo;

    .line 137
    .local v1, "r":Lch/qos/logback/core/pattern/FormatInfo;
    iget v3, p0, Lch/qos/logback/core/pattern/FormatInfo;->min:I

    iget v4, v1, Lch/qos/logback/core/pattern/FormatInfo;->min:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lch/qos/logback/core/pattern/FormatInfo;->max:I

    iget v4, v1, Lch/qos/logback/core/pattern/FormatInfo;->max:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lch/qos/logback/core/pattern/FormatInfo;->leftPad:Z

    iget-boolean v4, v1, Lch/qos/logback/core/pattern/FormatInfo;->leftPad:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lch/qos/logback/core/pattern/FormatInfo;->leftTruncate:Z

    iget-boolean v4, v1, Lch/qos/logback/core/pattern/FormatInfo;->leftTruncate:Z

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getMax()I
    .locals 1

    .line 105
    iget v0, p0, Lch/qos/logback/core/pattern/FormatInfo;->max:I

    return v0
.end method

.method public getMin()I
    .locals 1

    .line 113
    iget v0, p0, Lch/qos/logback/core/pattern/FormatInfo;->min:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 142
    iget v0, p0, Lch/qos/logback/core/pattern/FormatInfo;->min:I

    .line 143
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lch/qos/logback/core/pattern/FormatInfo;->max:I

    add-int/2addr v1, v2

    .line 144
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lch/qos/logback/core/pattern/FormatInfo;->leftPad:Z

    add-int/2addr v0, v2

    .line 145
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lch/qos/logback/core/pattern/FormatInfo;->leftTruncate:Z

    add-int/2addr v1, v2

    .line 146
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public isLeftPad()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lch/qos/logback/core/pattern/FormatInfo;->leftPad:Z

    return v0
.end method

.method public isLeftTruncate()Z
    .locals 1

    .line 121
    iget-boolean v0, p0, Lch/qos/logback/core/pattern/FormatInfo;->leftTruncate:Z

    return v0
.end method

.method public setLeftPad(Z)V
    .locals 0
    .param p1, "leftAlign"    # Z

    .line 101
    iput-boolean p1, p0, Lch/qos/logback/core/pattern/FormatInfo;->leftPad:Z

    .line 102
    return-void
.end method

.method public setLeftTruncate(Z)V
    .locals 0
    .param p1, "leftTruncate"    # Z

    .line 125
    iput-boolean p1, p0, Lch/qos/logback/core/pattern/FormatInfo;->leftTruncate:Z

    .line 126
    return-void
.end method

.method public setMax(I)V
    .locals 0
    .param p1, "max"    # I

    .line 109
    iput p1, p0, Lch/qos/logback/core/pattern/FormatInfo;->max:I

    .line 110
    return-void
.end method

.method public setMin(I)V
    .locals 0
    .param p1, "min"    # I

    .line 117
    iput p1, p0, Lch/qos/logback/core/pattern/FormatInfo;->min:I

    .line 118
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FormatInfo("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lch/qos/logback/core/pattern/FormatInfo;->min:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lch/qos/logback/core/pattern/FormatInfo;->max:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lch/qos/logback/core/pattern/FormatInfo;->leftPad:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lch/qos/logback/core/pattern/FormatInfo;->leftTruncate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
