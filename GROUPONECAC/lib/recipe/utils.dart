import 'package:coffee_and_code/recipe/subcategory.dart';
import 'package:flutter/material.dart';


import '../other/config.dart';
import 'category.dart';
import 'categorypart.dart';

class Utils{
  static List<Category> getMockedCategories(){
    return[
      Category(
          color: currentTheme.textColor,
          name: "Stretching",
          imgName: "stretch",
          subCategories: [
            SubCategory(name: "Calf Stretch", color: currentTheme.textColor, imgName: "calfs",
                parts: [
                  CategoryPart(
                      name: 'test',
                      imgName: 'test',
                      isSelected: false
                  ),
                ], benif: 'Calf stretches are a vital part of rehab for a whole range of foot and ankle problems'

            ),
            SubCategory(name: "Hamstring Stretch", color: currentTheme.textColor, imgName: "hamstring",
                parts: [
                  CategoryPart(
                      name: 'test',
                      imgName: 'test',
                      isSelected: false
                  ),
                ], benif: 'The sitting hamstring stretch targets your rear-thigh muscles'),
            SubCategory(name: "Quadriceps Stretch", color: currentTheme.textColor, imgName: "stretch",
                parts: [
                  CategoryPart(
                      name: '',
                      imgName: '',
                      isSelected: false
                  ),
                ], benif: 'Not surprisingly, quadriceps stretches target your quads, a four-muscle group at the front of each thigh'),
            SubCategory(name: "Hip flexor Stretch", color: currentTheme.textColor, imgName: "hipflecs",
                parts: [
                  CategoryPart(
                      name: '',
                      imgName: '',
                      isSelected: false
                  ),
                ], benif: 'By stretching the hip flexors, we allow the glutes to turn on, improve performance, and reduce our chance of injury'),
            SubCategory(name: "Knee-to-chest Stretch", color: currentTheme.textColor, imgName: "kneec",
                parts: [
                  CategoryPart(
                      name: '',
                      imgName: '',
                      isSelected: false
                  ),
                ], benif: 'The knee to chest stretch is used to stretch your hip and low back (lumbar spine) muscles'),
            SubCategory(name: "Shoulder Stretch", color: currentTheme.textColor, imgName: "shoulder",
                parts: [
                  CategoryPart(
                      name: '',
                      imgName: '',
                      isSelected: false
                  ),
                ], benif: 'This behind-your-back shoulder stretch will stretch the front of the shoulder and the chest (the anterior deltoid and the pectoralis minor muscles)'),
          ], benif: ''
      ),

      Category(
          color: currentTheme.textColor,
          name: "Yoga",
          imgName: "yoga",
          subCategories: [
            SubCategory(name: "Boat Pose", color: currentTheme.textColor, imgName: "boat",
                parts: [
                  CategoryPart(
                      name: '',
                      imgName: '',
                      isSelected: false
                  ),
                ], benif: 'opens the chest and engages the muscles in your core while also strengthening the hip flexors and adductor muscles'),
            SubCategory(name: "Bow Pose", color: currentTheme.textColor, imgName: "bow",
                parts: [
                  CategoryPart(
                      name: '',
                      imgName: '',
                      isSelected: false
                  ),
                ], benif: 'opens up the hip flexors, which are often weak from underuse'),
            SubCategory(name: "Twisted Pose", color: currentTheme.textColor, imgName: "Twisted",
                parts: [
                  CategoryPart(
                      name: '',
                      imgName: '',
                      isSelected: false
                  ),
                ], benif: 'will help to open the chest, shoulders and back, all of which can help to decrease feelings of anxiousness'),
            SubCategory(name: "Crow Pose", color: currentTheme.textColor, imgName: "Crow",
                parts: [
                  CategoryPart(
                      name: '',
                      imgName: '',
                      isSelected: false
                  ),
                ], benif: 'It strengthens the arms, first and foremost, but all arm balances also require core strength to support your body'),
            SubCategory(name: "Cobra Stretch", color: currentTheme.textColor, imgName: "cobra",
                parts: [
                  CategoryPart(
                      name: '',
                      imgName: '',
                      isSelected: false
                  ),
                ], benif: 'Invigorates the heart. Decreases the stiffness of the lower back. Stretches the muscles in the chest, shoulders, and abdominals'),
            SubCategory(name: "Plough Pose", color: currentTheme.textColor, imgName: "Plough",
                parts: [
                  CategoryPart(
                      name: '',
                      imgName: '',
                      isSelected: false
                  ),
                ], benif: 'helps prevent and relieve tightness in your neck, shoulders, and back'),
          ], benif: ''
      ),
      Category(
          color: currentTheme.textColor,
          name: "Cardio",
          imgName: "cardio1",
          subCategories: [
            SubCategory(name: "Running", color: currentTheme.textColor, imgName: "running",
                parts: [
                  CategoryPart(
                      name: '',
                      imgName: '',
                      isSelected: false
                  ),
                ], benif: 'help to build strong bones, as it is a weight bearing exercise. strengthen muscles. improve cardiovascular fitness'),
            SubCategory(name: "Burpees", color: currentTheme.textColor, imgName: "burp",
                parts: [
                  CategoryPart(
                      name: '',
                      imgName: '',
                      isSelected: false
                  ),
                ], benif: 'A standard burpee exercise works to strengthen the muscles in your legs, hips, buttocks, abdomen, arms, chest, and shoulders'),
            SubCategory(name: "Swimming", color: currentTheme.textColor, imgName: "swin",
                parts: [
                  CategoryPart(
                      name: '',
                      imgName: '',
                      isSelected: false
                  ),
                ], benif: 'helps you maintain a healthy weight, healthy heart and lungs. tones muscles and builds strength'),
            SubCategory(name: "Cycling/Bicycling", color: currentTheme.textColor, imgName: "cycle",
                parts: [
                  CategoryPart(
                      name: '',
                      imgName: '',
                      isSelected: false
                  ),
                ], benif: 'one of the healthiest and low-impact forms of exercise - meaning it causes less strain and injuries than most other workouts'),
            SubCategory(name: "Jumping rope", color: currentTheme.textColor, imgName: "rope",
                parts: [
                  CategoryPart(
                      name: '',
                      imgName: '',
                      isSelected: false
                  ),
                ], benif: 'It can increase your cardiorespiratory fitness, build stronger bones and muscles, and improve your balance and coordination'),
            SubCategory(name: "Mountain climbing", color: currentTheme.textColor, imgName: "climb",
                parts: [
                  CategoryPart(
                      name: '',
                      imgName: '',
                      isSelected: false
                  ),
                ], benif: 'They are incredibly efficient. As a compound exercise, mountain climbers work multiple muscle groups and joints at the same time'),
          ], benif: ''
      ),
      Category(
          color: currentTheme.textColor,
          name: "Full Body",
          imgName: "fullbody",
          subCategories: [
            SubCategory(name: "Bench Jump", color: currentTheme.textColor, imgName: "bench",
                parts: [
                  CategoryPart(
                      name: '',
                      imgName: '',
                      isSelected: false
                  ),
                ], benif: 'Bench jumps are perfect to tone legs and lower body muscles, while the increased heart rate will help burn fat while your at it'),
            SubCategory(name: "Cable woodchip", color: currentTheme.textColor, imgName: "wood",
                parts: [
                  CategoryPart(
                      name: '',
                      imgName: '',
                      isSelected: false
                  ),
                ], benif: 'This exercise is a good addition to a core strengthening or total body workout'),
            SubCategory(name: "Seated leg curl", color: currentTheme.textColor, imgName: "legcurl",
                parts: [
                  CategoryPart(
                      name: '',
                      imgName: '',
                      isSelected: false
                  ),
                ], benif: 'Leg curls target the hamstrings (biceps femoris, semitendinosus, and semimembranosus) and calf muscles (gastrocnemius and soleus muscles)'),
            SubCategory(name: "Kneeling push up", color: currentTheme.textColor, imgName: "kneelpush",
                parts: [
                  CategoryPart(
                      name: '',
                      imgName: '',
                      isSelected: false
                  ),
                ], benif: 'activates muscle groups throughout your upper body, including your triceps, pecs, and shoulders. Knee push-ups can increase core stability'),
            SubCategory(name: "Farmer’s walk", color: currentTheme.textColor, imgName: "farmer",
                parts: [
                  CategoryPart(
                      name: '',
                      imgName: '',
                      isSelected: false
                  ),
                ], benif: 'It provides a full body workout, targeting the quads, hamstrings, glutes, calves, erectors, upper back, traps, lats, abs and biceps'),
            SubCategory(name: "AB wheel rollout", color: currentTheme.textColor, imgName: "wheel",
                parts: [
                  CategoryPart(
                      name: '',
                      imgName: '',
                      isSelected: false
                  ),
                ], benif: 'With an ab wheel rollout, you can ignite all muscles in your abdominal area')


          ], benif: ''
      ),
      Category(
          color: currentTheme.textColor,
          name: "Weights",
          imgName: "weights",
          subCategories: [
            SubCategory(name: "Bench Press", color: currentTheme.textColor, imgName: "benchpress",
                parts: [
                  CategoryPart(
                      name: '',
                      imgName: '',
                      isSelected: false
                  ),
                ], benif: 'increasing upper body strength, improving muscular endurance, and even preparing your upper body to do movements like pushups'),
            SubCategory(name: "Bicep Curl", color: currentTheme.textColor, imgName: "BicepCurl",
                parts: [
                  CategoryPart(
                      name: '',
                      imgName: '',
                      isSelected: false
                  ),
                ], benif: 'The bicep muscle works in tandem with lats, traps, deltoids, and triceps in shoulder and elbow functions'),
            SubCategory(name: "Shoulder Press", color: currentTheme.textColor, imgName: "shoulderpress",
                parts: [
                  CategoryPart(
                      name: '',
                      imgName: '',
                      isSelected: false
                  ),
                ], benif: ' not only increases your shoulder and upper-body strength, it also conditions your rotator cuff'),
            SubCategory(name: "Bent-Over Row", color:currentTheme.textColor, imgName: "bentrow",
                parts: [
                  CategoryPart(
                      name: '',
                      imgName: '',
                      isSelected: false
                  ),
                ], benif: 'Helps increase stability in the body and improves grip in the hands'),
            SubCategory(name: "Lateral Raise", color: currentTheme.textColor, imgName: "lateralraise",
                parts: [
                  CategoryPart(
                      name: '',
                      imgName: '',
                      isSelected: false
                  ),
                ], benif: 'Lateral raise exercise targets the deltoid muscles and some trapezius fibers as well'),
            SubCategory(name: "Tricep Extensions", color: currentTheme.textColor, imgName: "tricepexten",
                parts: [
                  CategoryPart(
                      name: '',
                      imgName: '',
                      isSelected: false
                  ),
                ], benif: 'triceps extension while standing challenges you to engage the core to stabilize the lower and mid-body while you move both arms')
          ], benif: ''
      )



    ];
  }
}