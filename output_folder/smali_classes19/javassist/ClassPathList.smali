.class final Ljavassist/ClassPathList;
.super Ljava/lang/Object;
.source "ClassPoolTail.java"


# instance fields
.field next:Ljavassist/ClassPathList;

.field path:Ljavassist/ClassPath;


# direct methods
.method constructor <init>(Ljavassist/ClassPath;Ljavassist/ClassPathList;)V
    .locals 0
    .param p1, "p"    # Ljavassist/ClassPath;
    .param p2, "n"    # Ljavassist/ClassPathList;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p2, p0, Ljavassist/ClassPathList;->next:Ljavassist/ClassPathList;

    .line 40
    iput-object p1, p0, Ljavassist/ClassPathList;->path:Ljavassist/ClassPath;

    .line 41
    return-void
.end method
