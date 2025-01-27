.class public Lcom/itextpdf/kernel/geom/Point;
.super Ljava/lang/Object;
.source "Point.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = -0x493b758dcb8137daL


# instance fields
.field public x:D

.field public y:D


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/itextpdf/kernel/geom/Point;->setLocation(II)V

    .line 40
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0
    .param p1, "x"    # D
    .param p3, "y"    # D

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/itextpdf/kernel/geom/Point;->setLocation(DD)V

    .line 48
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/kernel/geom/Point;->setLocation(II)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/geom/Point;)V
    .locals 4
    .param p1, "p"    # Lcom/itextpdf/kernel/geom/Point;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iget-wide v0, p1, Lcom/itextpdf/kernel/geom/Point;->x:D

    iget-wide v2, p1, Lcom/itextpdf/kernel/geom/Point;->y:D

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/itextpdf/kernel/geom/Point;->setLocation(DD)V

    .line 52
    return-void
.end method

.method public static distance(DDDD)D
    .locals 2
    .param p0, "x1"    # D
    .param p2, "y1"    # D
    .param p4, "x2"    # D
    .param p6, "y2"    # D

    .line 130
    invoke-static/range {p0 .. p7}, Lcom/itextpdf/kernel/geom/Point;->distanceSq(DDDD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static distanceSq(DDDD)D
    .locals 4
    .param p0, "x1"    # D
    .param p2, "y1"    # D
    .param p4, "x2"    # D
    .param p6, "y2"    # D

    .line 116
    sub-double/2addr p4, p0

    .line 117
    sub-double/2addr p6, p2

    .line 118
    mul-double v0, p4, p4

    mul-double v2, p6, p6

    add-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 5

    .line 144
    new-instance v0, Lcom/itextpdf/kernel/geom/Point;

    iget-wide v1, p0, Lcom/itextpdf/kernel/geom/Point;->x:D

    iget-wide v3, p0, Lcom/itextpdf/kernel/geom/Point;->y:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    return-object v0
.end method

.method public distance(DD)D
    .locals 2
    .param p1, "px"    # D
    .param p3, "py"    # D

    .line 134
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/itextpdf/kernel/geom/Point;->distanceSq(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public distance(Lcom/itextpdf/kernel/geom/Point;)D
    .locals 2
    .param p1, "p"    # Lcom/itextpdf/kernel/geom/Point;

    .line 138
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/geom/Point;->distanceSq(Lcom/itextpdf/kernel/geom/Point;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public distanceSq(DD)D
    .locals 8
    .param p1, "px"    # D
    .param p3, "py"    # D

    .line 122
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v2

    move-wide v4, p1

    move-wide v6, p3

    invoke-static/range {v0 .. v7}, Lcom/itextpdf/kernel/geom/Point;->distanceSq(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public distanceSq(Lcom/itextpdf/kernel/geom/Point;)D
    .locals 8
    .param p1, "p"    # Lcom/itextpdf/kernel/geom/Point;

    .line 126
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/itextpdf/kernel/geom/Point;->distanceSq(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 56
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 57
    return v0

    .line 59
    :cond_0
    instance-of v1, p1, Lcom/itextpdf/kernel/geom/Point;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 60
    move-object v1, p1

    check-cast v1, Lcom/itextpdf/kernel/geom/Point;

    .line 61
    .local v1, "p":Lcom/itextpdf/kernel/geom/Point;
    iget-wide v3, p0, Lcom/itextpdf/kernel/geom/Point;->x:D

    iget-wide v5, v1, Lcom/itextpdf/kernel/geom/Point;->x:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_1

    iget-wide v3, p0, Lcom/itextpdf/kernel/geom/Point;->y:D

    iget-wide v5, v1, Lcom/itextpdf/kernel/geom/Point;->y:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    .line 63
    .end local v1    # "p":Lcom/itextpdf/kernel/geom/Point;
    :cond_2
    return v2
.end method

.method public getLocation()Lcom/itextpdf/kernel/geom/Point;
    .locals 5

    .line 81
    new-instance v0, Lcom/itextpdf/kernel/geom/Point;

    iget-wide v1, p0, Lcom/itextpdf/kernel/geom/Point;->x:D

    iget-wide v3, p0, Lcom/itextpdf/kernel/geom/Point;->y:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    return-object v0
.end method

.method public getX()D
    .locals 2

    .line 73
    iget-wide v0, p0, Lcom/itextpdf/kernel/geom/Point;->x:D

    return-wide v0
.end method

.method public getY()D
    .locals 2

    .line 77
    iget-wide v0, p0, Lcom/itextpdf/kernel/geom/Point;->y:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 109
    new-instance v0, Lcom/itextpdf/io/util/HashCode;

    invoke-direct {v0}, Lcom/itextpdf/io/util/HashCode;-><init>()V

    .line 110
    .local v0, "hash":Lcom/itextpdf/io/util/HashCode;
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/io/util/HashCode;->append(D)Lcom/itextpdf/io/util/HashCode;

    .line 111
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/io/util/HashCode;->append(D)Lcom/itextpdf/io/util/HashCode;

    .line 112
    invoke-virtual {v0}, Lcom/itextpdf/io/util/HashCode;->hashCode()I

    move-result v1

    return v1
.end method

.method public move(DD)V
    .locals 0
    .param p1, "x"    # D
    .param p3, "y"    # D

    .line 98
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/itextpdf/kernel/geom/Point;->setLocation(DD)V

    .line 99
    return-void
.end method

.method public setLocation(DD)V
    .locals 0
    .param p1, "x"    # D
    .param p3, "y"    # D

    .line 93
    iput-wide p1, p0, Lcom/itextpdf/kernel/geom/Point;->x:D

    .line 94
    iput-wide p3, p0, Lcom/itextpdf/kernel/geom/Point;->y:D

    .line 95
    return-void
.end method

.method public setLocation(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 89
    int-to-double v0, p1

    int-to-double v2, p2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/itextpdf/kernel/geom/Point;->setLocation(DD)V

    .line 90
    return-void
.end method

.method public setLocation(Lcom/itextpdf/kernel/geom/Point;)V
    .locals 4
    .param p1, "p"    # Lcom/itextpdf/kernel/geom/Point;

    .line 85
    iget-wide v0, p1, Lcom/itextpdf/kernel/geom/Point;->x:D

    iget-wide v2, p1, Lcom/itextpdf/kernel/geom/Point;->y:D

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/itextpdf/kernel/geom/Point;->setLocation(DD)V

    .line 86
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 69
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lcom/itextpdf/kernel/geom/Point;->x:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/itextpdf/kernel/geom/Point;->y:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Point: [x={0},y={1}]"

    invoke-static {v1, v0}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public translate(DD)V
    .locals 2
    .param p1, "dx"    # D
    .param p3, "dy"    # D

    .line 102
    iget-wide v0, p0, Lcom/itextpdf/kernel/geom/Point;->x:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/Point;->x:D

    .line 103
    iget-wide v0, p0, Lcom/itextpdf/kernel/geom/Point;->y:D

    add-double/2addr v0, p3

    iput-wide v0, p0, Lcom/itextpdf/kernel/geom/Point;->y:D

    .line 104
    return-void
.end method
