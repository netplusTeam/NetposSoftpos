.class public Lbsh/Capabilities;
.super Ljava/lang/Object;
.source "Capabilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbsh/Capabilities$Unavailable;
    }
.end annotation


# static fields
.field private static accessibility:Z

.field private static classes:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lbsh/Capabilities;->accessibility:Z

    .line 95
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lbsh/Capabilities;->classes:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canGenerateInterfaces()Z
    .locals 1

    .line 54
    const-string v0, "java.lang.reflect.Proxy"

    invoke-static {v0}, Lbsh/Capabilities;->classExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static classExists(Ljava/lang/String;)Z
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .line 107
    sget-object v0, Lbsh/Capabilities;->classes:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 109
    .local v0, "c":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 116
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 117
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    .line 119
    :goto_1
    if-eqz v0, :cond_0

    .line 120
    sget-object v1, Lbsh/Capabilities;->classes:Ljava/util/Hashtable;

    const-string/jumbo v2, "unused"

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method public static haveAccessibility()Z
    .locals 1

    .line 68
    sget-boolean v0, Lbsh/Capabilities;->accessibility:Z

    return v0
.end method

.method public static haveSwing()Z
    .locals 1

    .line 49
    const-string v0, "javax.swing.JButton"

    invoke-static {v0}, Lbsh/Capabilities;->classExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setAccessibility(Z)V
    .locals 4
    .param p0, "b"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/Capabilities$Unavailable;
        }
    .end annotation

    .line 74
    if-nez p0, :cond_0

    .line 76
    const/4 v0, 0x0

    sput-boolean v0, Lbsh/Capabilities;->accessibility:Z

    .line 77
    return-void

    .line 80
    :cond_0
    const-string v0, "java.lang.reflect.AccessibleObject"

    invoke-static {v0}, Lbsh/Capabilities;->classExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    const-string v0, "bsh.reflect.ReflectManagerImpl"

    invoke-static {v0}, Lbsh/Capabilities;->classExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    :try_start_0
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    nop

    .line 92
    const/4 v0, 0x1

    sput-boolean v0, Lbsh/Capabilities;->accessibility:Z

    .line 93
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v1, Lbsh/Capabilities$Unavailable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Accessibility unavailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lbsh/Capabilities$Unavailable;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_1
    new-instance v0, Lbsh/Capabilities$Unavailable;

    const-string v1, "Accessibility unavailable"

    invoke-direct {v0, v1}, Lbsh/Capabilities$Unavailable;-><init>(Ljava/lang/String;)V

    throw v0
.end method
