.class public Landroid/util/CalendarUtils;
.super Ljava/lang/Object;
.source "CalendarUtils.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/CalendarUtils$TimeZoneUtils;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "CalendarUtils"



# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;
    .registers 3
    .parameter "context"
    .parameter "prefsName"

    .prologue
    .line 340
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "prefs"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 318
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 319
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 320
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 321
    return-void
.end method

.method public static setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V
    .registers 4
    .parameter "prefs"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 333
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 334
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 335
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 336
    return-void
.end method
