.class Ljavassist/bytecode/CodeIterator$AlignmentException;
.super Ljava/lang/Exception;
.source "CodeIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/CodeIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AlignmentException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .locals 0

    .line 823
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method
