.class public Lcom/itextpdf/kernel/geom/NoninvertibleTransformException;
.super Ljava/lang/Exception;
.source "NoninvertibleTransformException.java"


# static fields
.field public static final DETERMINANT_IS_ZERO_CANNOT_INVERT_TRANSFORMATION:Ljava/lang/String; = "Determinant is zero. Cannot invert transformation."

.field private static final serialVersionUID:J = 0x552bcdd6fecd38c2L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 39
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 40
    return-void
.end method
